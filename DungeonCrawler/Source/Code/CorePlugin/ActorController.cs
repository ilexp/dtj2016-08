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
	[RequiredComponent(typeof(Transform))]
	public class ActorController : Component, ICmpUpdatable, ICmpEditorUpdatable
	{
		private Point2 gridPos = Point2.Zero;

		public Point2 GridPosition
		{
			get { return this.gridPos; }
		}
		public bool IsOnFire
		{
			get { return LevelMap.Current.IsTilePositionLava(this.gridPos); }
		}


		public void TeleportTo(Point2 gridPos)
		{
			Vector2 targetPos = LevelMap.Current.GetObjectPosition(this.gridPos);
			this.GameObj.Transform.Pos = new Vector3(targetPos, this.GameObj.Transform.Pos.Z);
		}
		public void MoveTo(Point2 gridPos)
		{
			this.gridPos = gridPos;
		}
		public void MoveTo(Direction direction)
		{
			this.MoveTo(direction.ToPoint(this.gridPos));
		}
		public bool CanMoveTo(Direction direction)
		{
			Point2 targetGridPos = direction.ToPoint(this.gridPos);
			Vector2 currentPos = LevelMap.Current.GetObjectPosition(this.gridPos);
			Vector2 targetPos = LevelMap.Current.GetObjectPosition(targetGridPos);
			RayCastData firstHit;
			if (RigidBody.RayCast(currentPos, targetPos, d => d.Fraction, out firstHit))
				return false;
			else
				return true;
		}


		private void UpdatePosition()
		{
			Vector2 objPos = LevelMap.Current.GetObjectPosition(this.gridPos);
			this.GameObj.Transform.MoveToAbs(objPos);
		}

		void ICmpUpdatable.OnUpdate()
		{
			Vector2 targetPos = LevelMap.Current.GetObjectPosition(this.gridPos);
			Vector2 currentPos = this.GameObj.Transform.Pos.Xy;
			Vector2 diff = targetPos - currentPos;
			float distance = diff.Length;
			if (distance > 0.001f)
			{
				Vector2 moveDir = diff.Normalized;
				float moveSpeed = 1.0f + distance * 0.2f;
				Vector2 moveBy = moveDir * MathF.Min(moveSpeed * Time.TimeMult, distance);

				this.GameObj.Transform.MoveByAbs(moveBy);
			}
		}
		void ICmpEditorUpdatable.OnUpdate()
		{
			if (DualityApp.ExecContext == DualityApp.ExecutionContext.Editor)
			{
				this.gridPos = LevelMap.Current.GetTilePosition(this.GameObj.Transform.Pos.Xy);
			}
		}
	}
}
