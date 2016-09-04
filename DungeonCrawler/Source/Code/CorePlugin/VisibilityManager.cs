using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Resources;
using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Tilemaps;

namespace DungeonCrawler
{
	public class VisibilityManager : SingletonComponent<VisibilityManager>
	{
		private static readonly int SightRadius = 8;

		private TilemapRenderer visibilityRenderer;
		private int seenTile;
		private int unseenTile;
		private int lastSeenTile;
		private Vector2 playerPos;

		[DontSerialize] private Grid<Tile> visibilityBuffer = new Grid<Tile>();

		
		public TilemapRenderer VisibilityRenderer
		{
			get { return this.visibilityRenderer; }
			set { this.visibilityRenderer = value; }
		}
		public int SeenTile
		{
			get { return this.seenTile; }
			set { this.seenTile = value; }
		}
		public int UnseenTile
		{
			get { return this.unseenTile; }
			set { this.unseenTile = value; }
		}
		public int LastSeenTile
		{
			get { return this.lastSeenTile; }
			set { this.lastSeenTile = value; }
		}
		public Vector2 PlayerPosition
		{
			get { return this.playerPos; }
			set
			{
				if (this.playerPos != value)
				{
					this.playerPos = value;
					this.UpdateVisibility();
				}
			}
		}
		public Point2 PlayerGridPosition
		{
			get { return LevelMap.Current.GetTilePosition(this.PlayerPosition); }
			set { this.PlayerPosition = LevelMap.Current.GetObjectPosition(value); }
		}


		public void UpdateVisibility()
		{
			Transform visibilityTransform = (this.visibilityRenderer as Component).GameObj.Transform;
			Tilemap visibilityMap = this.visibilityRenderer.ActiveTilemap;

			Tilemap terrainMap = LevelMap.Current.BaseMap;
			Tileset terrainTileset = terrainMap.Tileset.Res;

			Vector2 tileSize = new Vector2(
				this.visibilityRenderer.LocalTilemapRect.W / (float)visibilityMap.Size.X,
				this.visibilityRenderer.LocalTilemapRect.H / (float)visibilityMap.Size.Y);

			Grid<Tile> tiles = visibilityMap.BeginUpdateTiles();
			Tile[] tileData = tiles.RawData;
			int width = tiles.Width;
			int height = tiles.Height;

			// Fill as unseen
			for (int x = 0; x < width; x++)
			{
				for (int y = 0; y < height; y++)
				{
					int i = x + width * y;
					tileData[i].BaseIndex = 
						(tileData[i].BaseIndex == this.seenTile) ? 
						this.lastSeenTile : 
						this.unseenTile;
				}
			}

			Point2 startTile = LevelMap.Current.GetTilePosition(this.playerPos);

			// Note:
			//  Determining visibility with physical raycasts is quite inefficient.
			//  Doing so with so many raycasts is super super inefficient.
			//  Don't do this.
			int raycastCount = 60;
			for (int i = 0; i < raycastCount; i++)
			{
				float angle = MathF.TwoPi * (float)i / (float)raycastCount;
				Vector2 offset = Vector2.FromAngleLength(angle, SightRadius * (tileSize.X + 1));

				RayCastData hitData;
				bool hit = RigidBody.RayCast(
					this.playerPos, 
					this.playerPos + offset, 
					d => (d.Body.Active && d.Body.CollisionCategory.HasFlag(CollisionCategory.Cat2)) ? d.Fraction : -1.0f, 
					out hitData);
				float hitFraction = hit ? hitData.Fraction : 1.0f;
				Vector2 hitPos = this.playerPos + offset * hitFraction - offset.Normalized * 2;

				Point2 endTile = LevelMap.Current.GetTilePosition(hitPos);
				DrawTileLine(tileData, width, startTile.X, startTile.Y, endTile.X, endTile.Y, this.seenTile);

				//Vector2 startTilePos = LevelMap.Current.GetObjectPosition(startTile);
				//Vector2 endTilePos = LevelMap.Current.GetObjectPosition(endTile);
				//VisualLog.Default.DrawConnection(
				//	this.playerPos.X, 
				//	this.playerPos.Y, 
				//	0.0f, 
				//	hitPos.X, 
				//	hitPos.Y)
				//	.WithOffset(-100)
				//	.KeepAlive(1000);
				//VisualLog.Default.DrawConnection(
				//	startTilePos.X, 
				//	startTilePos.Y, 
				//	0.0f, 
				//	endTilePos.X, 
				//	endTilePos.Y)
				//	.WithColor(ColorRgba.Red)
				//	.WithOffset(-101)
				//	.KeepAlive(1000);
			}
			
			// Expand visibility by one in all directions
			Grid<Tile> terrainTiles = terrainMap.BeginUpdateTiles();
			ExpandVisible(this.visibilityBuffer, tiles, this.seenTile, terrainTiles, terrainTileset.TileData.Data);
			terrainMap.EndUpdateTiles(0, 0, 0, 0);

			// Update everything on the fire map
			visibilityMap.EndUpdateTiles();
		}

		public override void OnInit(Component.InitContext context)
		{
			base.OnInit(context);
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				Tilemap visibilityMap = this.visibilityRenderer.ActiveTilemap;
				Grid<Tile> tiles = visibilityMap.BeginUpdateTiles();
				tiles.Fill(new Tile(this.unseenTile), 0, 0, visibilityMap.Size.X, visibilityMap.Size.Y);
				visibilityMap.EndUpdateTiles();
			}
		}

		// All credit goes to:
		// http://stackoverflow.com/questions/11678693/all-cases-covered-bresenhams-line-algorithm
		private static void DrawTileLine(Tile[] tileData, int tileStride, int x, int y, int x2, int y2, int drawIndex)
		{
			int w = x2 - x;
			int h = y2 - y;
			int dx1 = 0, dy1 = 0, dx2 = 0, dy2 = 0;
			if (w<0) dx1 = -1 ; else if (w>0) dx1 = 1;
			if (h<0) dy1 = -1 ; else if (h>0) dy1 = 1;
			if (w<0) dx2 = -1 ; else if (w>0) dx2 = 1;
			int longest = Math.Abs(w);
			int shortest = Math.Abs(h);
			if (longest <= shortest)
			{
				longest = Math.Abs(h);
				shortest = Math.Abs(w);
				if (h<0) dy2 = -1 ; else if (h>0) dy2 = 1;
				dx2 = 0;            
			}
			int numerator = longest >> 1;
			for (int i = 0; i <= longest; i++)
			{
				tileData[y * tileStride + x].BaseIndex = drawIndex;
				numerator += shortest;
				if (!(numerator<longest))
				{
					numerator -= longest;
					x += dx1;
					y += dy1;
				}
				else
				{
					x += dx2;
					y += dy2;
				}
			}
		}
		private static void ExpandVisible(Grid<Tile> buffer, Grid<Tile> visibility, int visibleIndex, Grid<Tile> terrainTiles, TileInfo[] tileData)
		{
			int width = visibility.Width;
			int height = visibility.Height;

			buffer.ResizeClear(width, height);
			visibility.CopyTo(buffer);

			Tile[] newVisibilityData = visibility.RawData;
			Tile[] visibilityData = buffer.RawData;
			Tile[] terrainData = terrainTiles.RawData;

			for (int x = 0; x < width; x++)
			{
				for (int y = 0; y < height; y++)
				{
					int i = x + width * y;

					// Don't expand visibility to non-blocking tiles
					TileCollisionShapes collision = tileData[terrainData[i].BaseIndex].Collision;
					bool blockingView = collision[TileCollisionLayer.Layer2] != TileCollisionShape.Free;
					if (!blockingView) continue;

					bool visible = visibilityData[i].BaseIndex == visibleIndex;
					visible |= x > 0         && y > 0          && visibilityData[i - 1 - width].BaseIndex == visibleIndex;
					visible |=                  y > 0          && visibilityData[i     - width].BaseIndex == visibleIndex;
					visible |= x < width - 1 && y > 0          && visibilityData[i + 1 - width].BaseIndex == visibleIndex;
					visible |= x > 0         &&                   visibilityData[i - 1].BaseIndex == visibleIndex;
					visible |= x < width - 1 &&                   visibilityData[i + 1].BaseIndex == visibleIndex;
					visible |= x > 0         && y < height - 1 && visibilityData[i - 1 + width].BaseIndex == visibleIndex;
					visible |=                  y > 0          && visibilityData[i     - width].BaseIndex == visibleIndex;
					visible |= x < width - 1 && y < height - 1 && visibilityData[i + 1 + width].BaseIndex == visibleIndex;
					if (visible) newVisibilityData[i].BaseIndex = visibleIndex;
				}
			}
		}
	}
}
