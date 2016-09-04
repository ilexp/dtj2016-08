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
	public enum DoorType
	{
		Red,
		Green,
		Blue
	}

	public static class ExtMethodsDoorType
	{
		public static int GetDoorSpriteIndex(this DoorType type)
		{
			switch (type)
			{
				default: return 0;
				case DoorType.Red: return 95;
				case DoorType.Green: return 97;
				case DoorType.Blue: return 96;
			}
		}
		public static int GetKeySpriteIndex(this DoorType type)
		{
			switch (type)
			{
				default: return 0;
				case DoorType.Red: return 92;
				case DoorType.Green: return 94;
				case DoorType.Blue: return 93;
			}
		}
	}
}
