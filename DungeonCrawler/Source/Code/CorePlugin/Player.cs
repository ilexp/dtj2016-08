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
				this.moveTimer <= 0.0f && 
				this.actor.CanMoveTo(moveDir))
			{
				this.moveTimer += 0.25f;
				this.actor.MoveTo(moveDir);
				WorldSimulation.Current.Step();
			}

			VisibilityManager.Current.PlayerGridPosition = LevelMap.Current.GetTilePosition(this.actor.GameObj.Transform.Pos.Xy);
		}
	}
}
