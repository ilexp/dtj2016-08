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
	public class LevelMap : SingletonComponent<LevelMap>
	{
		private Tilemap fireMap = null;
		private Tilemap baseMap = null;
		private FireGrowth fireGrowth = null;

		private TilemapRenderer baseMapRenderer = null;
		private TilemapRenderer fireMapRenderer = null;
		private Transform baseMapTransform = null;
		private Transform fireMapTransform = null;

		
		public TilemapRenderer FireMapRenderer
		{
			get { return this.fireMapRenderer; }
			set
			{
				if (this.fireMapRenderer != value)
				{
					this.fireMapRenderer = value;
					this.UpdateComponentCache();
				}
			}
		}
		public TilemapRenderer BaseMapRenderer
		{
			get { return this.baseMapRenderer; }
			set
			{
				if (this.baseMapRenderer != value)
				{
					this.baseMapRenderer = value;
					this.UpdateComponentCache();
				}
			}
		}
		public Tilemap BaseMap
		{
			get { return this.baseMap; }
		}
		public FireGrowth FireGrowth
		{
			get { return this.fireGrowth; }
			set { this.fireGrowth = value; }
		}

		
		public T GetObjectAt<T>(Point2 tilePos) where T : class
		{
			Vector2 objPos = GetObjectPosition(tilePos);
			List<ShapeInfo> shapesAtPos = RigidBody.PickShapesGlobal(objPos);
			foreach (ShapeInfo shape in shapesAtPos)
			{
				T obj = shape.Parent.GameObj.GetComponent<T>();
				if (obj != null) return obj;
			}
			return default(T);
		}
		public Vector2 GetObjectPosition(Point2 tilePos)
		{
			if (this.baseMap == null) return Vector2.Zero;

			Vector2 tileSize = new Vector2(
				this.baseMapRenderer.LocalTilemapRect.W / (float)this.baseMap.Size.X,
				this.baseMapRenderer.LocalTilemapRect.H / (float)this.baseMap.Size.Y);
			return this.baseMapTransform.GetWorldPoint(
				this.baseMapRenderer.LocalTilemapRect.Pos + 
				tileSize * (tilePos + Vector2.One * 0.5f));
		}
		public Point2 GetTilePosition(Vector2 objPos)
		{
			if (this.baseMap == null) return Point2.Zero;

			return this.baseMapRenderer.GetTileAtLocalPos(
				this.baseMapTransform.GetLocalPoint(objPos), 
				TilePickMode.Clamp);
		}
		public bool IsTilePositionLava(Point2 tilePos)
		{
			if (this.fireMap == null) return false;
			if (this.fireGrowth == null) return false;
			int lavaTile = this.fireGrowth.FirstFireTile + this.fireGrowth.FireTileCount - 1;
			return this.fireMap.Tiles[tilePos.X, tilePos.Y].BaseIndex == lavaTile;
		}

		private void UpdateComponentCache()
		{
			if (this.baseMapRenderer == null)
			{
				this.baseMap = null;
				this.fireMap = null;
				this.baseMapTransform = null;
				this.fireMapTransform = null;
			}
			else
			{
				this.baseMap = this.baseMapRenderer.ActiveTilemap;
				this.fireMap = this.fireMapRenderer.ActiveTilemap;
				this.baseMapTransform = (this.baseMapRenderer as Component).GameObj.Transform;
				this.fireMapTransform = (this.fireMapRenderer as Component).GameObj.Transform;
			}
		}
	}
}
