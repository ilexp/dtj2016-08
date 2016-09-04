using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Components;
using Duality.Resources;
using Duality.Drawing;
using Duality.Editor;
using Duality.Components.Physics;
using Duality.Plugins.Tilemaps;

namespace DungeonCrawler
{
	[RequiredComponent(typeof(Transform))]
	public class FireTrap : Component
	{
		private ContentRef<Sound> sound;

		public ContentRef<Sound> ActivateSound
		{
			get { return this.sound; }
			set { this.sound = value; }
		}

		public void Activate()
		{
			Point2 tilePos = LevelMap.Current.GetTilePosition(this.GameObj.Transform.Pos.Xy);
			LevelMap.Current.FireGrowth.FireMap.SetTile(
				tilePos.X, 
				tilePos.Y, 
				new Tile(LevelMap.Current.FireGrowth.FirstFireTile));
			this.GameObj.DisposeLater();
			DualityApp.Sound.PlaySound(this.sound);
		}
	}
}
