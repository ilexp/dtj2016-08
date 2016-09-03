using System;
using System.Collections.Generic;
using System.Linq;

using Duality;

namespace DungeonCrawler
{
	public enum Direction
	{
		None,

		Up,
		Right,
		Down,
		Left
	}

	public static class ExtMethodsDirection
	{
		public static Point2 ToPoint(this Direction direction, Point2 basePos = default(Point2))
		{
			switch (direction)
			{
				default:
				case Direction.None:  return basePos;
				case Direction.Up:    return new Point2(basePos.X, basePos.Y - 1);
				case Direction.Right: return new Point2(basePos.X + 1, basePos.Y);
				case Direction.Down:  return new Point2(basePos.X, basePos.Y + 1);
				case Direction.Left:  return new Point2(basePos.X - 1, basePos.Y);
			}
		}
	}
}
