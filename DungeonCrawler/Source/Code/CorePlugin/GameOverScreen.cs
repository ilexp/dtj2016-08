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
	public class GameOverScreen : Component, ICmpUpdatable
	{
		private ContentRef<Scene> startGameScene = null;

		public ContentRef<Scene> StartGameScene
		{
			get { return this.startGameScene; }
			set { this.startGameScene = value; }
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (DualityApp.Keyboard.KeyHit(Key.Enter))
			{
				Scene.Current.DisposeLater();
				Scene.SwitchTo(this.startGameScene);
			}
			else if (DualityApp.Keyboard.KeyHit(Key.Escape))
				DualityApp.Terminate();
		}
	}
}
