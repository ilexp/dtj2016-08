﻿using System;
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
	public class Stairs : Component
	{
		private ContentRef<Scene> nextLevel;

		public ContentRef<Scene> NextLevel
		{
			get { return this.nextLevel; }
			set { this.nextLevel = value; }
		}
	}
}
