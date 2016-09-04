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
	public class YouWonScreen : Component, ICmpUpdatable
	{
		void ICmpUpdatable.OnUpdate()
		{
			if (DualityApp.Keyboard.KeyHit(Key.Enter) || DualityApp.Keyboard.KeyHit(Key.Escape))
				DualityApp.Terminate();
		}
	}
}
