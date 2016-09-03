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
	public interface ICmpGameplayUpdatable
	{
		void Step();
	}
}
