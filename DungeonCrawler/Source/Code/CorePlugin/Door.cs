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
	public class Door : Component
	{
		private DoorType type;
		private bool isOpen;

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
		public bool IsOpen
		{
			get { return this.isOpen; }
			set
			{
				if (this.isOpen != value)
				{
					this.isOpen = value;
					this.UpdateSprite();
					this.UpdateBlocker();
					VisibilityManager.Current.UpdateVisibility();
				}
			}
		}

		private void UpdateSprite()
		{
			ActorRenderer sprite = this.GameObj.GetComponent<ActorRenderer>();
			if (sprite == null) return;

			if (this.isOpen)
				sprite.SpriteIndex = 2;
			else
				sprite.SpriteIndex = this.type.GetDoorSpriteIndex();
		}
		private void UpdateBlocker()
		{
			RigidBody body = this.GameObj.GetComponent<RigidBody>();
			if (body != null)
				body.Active = !this.isOpen;

			GameObject visBlocker = this.GameObj.ChildAtIndex(0);
			if (visBlocker != null)
			{
				RigidBody visBlockerBody = visBlocker.GetComponent<RigidBody>();
				if (visBlockerBody != null)
					visBlockerBody.Active = !this.isOpen;
			}
		}
	}
}
