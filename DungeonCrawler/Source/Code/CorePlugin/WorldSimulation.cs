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
	public class WorldSimulation : SingletonComponent<WorldSimulation>
	{
		public void Step()
		{
			foreach (ICmpGameplayUpdatable obj in Scene.Current.FindComponents<ICmpGameplayUpdatable>())
			{
				obj.Step();
			}
		}
	}
}
