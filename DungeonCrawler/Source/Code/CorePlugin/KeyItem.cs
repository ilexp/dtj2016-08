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
	[RequiredComponent(typeof(ActorRenderer))]
	public class KeyItem : Item
	{
		private DoorType type;

		public DoorType Type
		{
			get { return this.type; }
			set
			{
				if (this.type != value)
				{
					this.type = value;
					this.UpdateSprite();
				}
			}
		}

		private void UpdateSprite()
		{
			ActorRenderer sprite = this.GameObj.GetComponent<ActorRenderer>();
			if (sprite == null) return;
			sprite.SpriteIndex = this.type.GetKeySpriteIndex();
		}
	}
}
