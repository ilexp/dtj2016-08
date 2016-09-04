using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Components;
using Duality.Resources;
using Duality.Input;
using Duality.Plugins.Tilemaps;

namespace DungeonCrawler
{
	public class Player : Component, ICmpUpdatable
	{
		private ActorController actor = null;
		private ContentRef<Scene> gameOverScene = null;
		private List<DoorType> keys = new List<DoorType>();

		[DontSerialize] private float moveTimer = 0.0f;

		public ActorController Actor
		{
			get { return this.actor; }
			set { this.actor = value; }
		}
		public ContentRef<Scene> GameOverScene
		{
			get { return this.gameOverScene; }
			set { this.gameOverScene = value; }
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (this.actor.IsOnFire)
			{
				Scene.Current.DisposeLater();
				Scene.SwitchTo(this.gameOverScene);
				return;
			}

			Direction moveDir = Direction.None;

			if (DualityApp.Keyboard[Key.Up])
				moveDir = Direction.Up;
			else if (DualityApp.Keyboard[Key.Down])
				moveDir = Direction.Down;
			else if (DualityApp.Keyboard[Key.Left])
				moveDir = Direction.Left;
			else if (DualityApp.Keyboard[Key.Right])
				moveDir = Direction.Right;
			else
				this.moveTimer = 0.0f;

			this.moveTimer -= Time.TimeMult * Time.SPFMult;

			if (moveDir != Direction.None && 
				this.moveTimer <= 0.0f)
			{
				this.moveTimer = 0.25f;
				Point2 targetGridPos = moveDir.ToPoint(this.actor.GridPosition);

				// Open doors
				Door door = LevelMap.Current.GetObjectAt<Door>(targetGridPos);
				if (door != null)
				{
					if (this.keys.Remove(door.Type))
					{
						door.GameObj.DisposeLater();
					}
				}
				// Move
				else if (this.actor.CanMoveTo(moveDir))
				{
					this.actor.MoveTo(moveDir);
					WorldSimulation.Current.Step();
				}
			}

			// Pick up items
			Item item = LevelMap.Current.GetObjectAt<Item>(this.actor.GridPosition);
			if (item is KeyItem)
			{
				keys.Add((item as KeyItem).Type);
				item.GameObj.DisposeLater();
			}

			// Enter the next level
			Stairs stairs = LevelMap.Current.GetObjectAt<Stairs>(this.actor.GridPosition);
			if (stairs != null)
			{
				Scene.Current.DisposeLater();
				Scene.SwitchTo(stairs.NextLevel);
				return;
			}

			// Update visibility when moving
			VisibilityManager.Current.PlayerGridPosition = LevelMap.Current.GetTilePosition(this.actor.GameObj.Transform.Pos.Xy);
		}
	}
}
