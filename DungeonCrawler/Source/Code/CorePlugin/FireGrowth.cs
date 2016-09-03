using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Components;
using Duality.Resources;
using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Tilemaps;

namespace DungeonCrawler
{
	public class FireGrowth : Component, ICmpGameplayUpdatable
	{
		private Tilemap collisionMap;
		private Tilemap fireMap;
		private int firstFireTile;
		private int fireTileCount;
		private int growthTimer;
		
		public Tilemap CollisionMap
		{
			get { return this.collisionMap; }
			set { this.collisionMap = value; }
		}
		public Tilemap FireMap
		{
			get { return this.fireMap; }
			set { this.fireMap = value; }
		}
		public int FirstFireTile
		{
			get { return this.firstFireTile; }
			set { this.firstFireTile = value; }
		}
		public int FireTileCount
		{
			get { return this.fireTileCount; }
			set { this.fireTileCount = value; }
		}

		void ICmpGameplayUpdatable.Step()
		{
			this.growthTimer++;
			if (this.growthTimer >= 2)
			{
				this.growthTimer = 0;
				this.GrowFire();
			}
		}

		private void GrowFire()
		{
			Grid<Tile> collisionTiles = this.collisionMap.BeginUpdateTiles();
			Tile[] collisionData = collisionTiles.RawData;
			Tileset collisionTileset = this.collisionMap.Tileset.Res;
			TileInfo[] collisionTileInfo = collisionTileset.TileData.Data;

			Grid<Tile> tiles = this.fireMap.BeginUpdateTiles();
			Tile[] tileData = tiles.RawData;
			int width = tiles.Width;
			int height = tiles.Height;

			// Expand existing local fire
			for (int y = 0; y < tiles.Height; y++)
			{
				for (int x = 0; x < tiles.Width; x++)
				{
					int i = y * width + x;
					int fireIndex = this.GetFireIndex(tileData[i].BaseIndex);
					if (fireIndex != -1 && fireIndex < this.firstFireTile + this.fireTileCount - 1)
					{
						fireIndex++;
						tileData[i].BaseIndex = fireIndex;
					}
				}
			}

			// Spread fire from neighbours
			for (int y = 0; y < tiles.Height; y++)
			{
				for (int x = 0; x < tiles.Width; x++)
				{
					int i = y * width + x;
					int fireIndex = this.GetFireIndex(tileData[i].BaseIndex);
					if (fireIndex != -1) continue;

					if ((x > 0          && this.GetFireIndex(tileData[i - 1    ].Index) != -1) ||
						(x < width - 1  && this.GetFireIndex(tileData[i + 1    ].Index) != -1) ||
						(y > 0          && this.GetFireIndex(tileData[i - width].Index) != -1) ||
						(y < height - 1 && this.GetFireIndex(tileData[i + width].Index) != -1))
					{
						TileCollisionShapes collisionShapes = collisionTileInfo[collisionData[i].Index].Collision;
						bool isFree = collisionShapes[TileCollisionLayer.Layer1] == TileCollisionShape.Free;
						if (isFree)
						{
							fireIndex = this.firstFireTile;
							tileData[i].BaseIndex = fireIndex;
						}
					}
				}
			}

			// Update everything on the fire map
			this.fireMap.EndUpdateTiles();
			// Update nothing on the collision map (didn't change anything)
			this.collisionMap.EndUpdateTiles(0, 0, 0, 0);
		}
		private int GetFireIndex(int index)
		{
			if (index < this.firstFireTile) return -1;
			if (index >= this.firstFireTile + this.fireTileCount) return -1;
			return index;
		}
	}
}
