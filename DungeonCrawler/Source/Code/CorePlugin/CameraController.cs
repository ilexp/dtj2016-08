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
	[RequiredComponent(typeof(Transform))]
	[RequiredComponent(typeof(Camera))]
	public class CameraController : Component, ICmpUpdatable, ICmpInitializable
	{
		private float      smoothness = 1.0f;
		private GameObject targetObj  = null;

		public float Smoothness
		{
			get { return this.smoothness; }
			set { this.smoothness = value; }
		}
		public GameObject TargetObject
		{
			get { return this.targetObj; }
			set { this.targetObj = value; }
		}

		private Vector3 GetTargetPos()
		{
			if (this.targetObj == null) return this.GameObj.Transform.Pos;

			Camera camera = this.GameObj.GetComponent<Camera>();
			Vector3 focusPos = this.targetObj.Transform.Pos;
			Vector3 targetPos = focusPos - new Vector3(0.0f, 0.0f, camera.FocusDist);
			return targetPos;
		}

		void ICmpUpdatable.OnUpdate()
		{
			// Early-out, if no target is specified
			if (this.targetObj == null) return;
			if (this.targetObj.Transform == null) return;

			Transform transform = this.GameObj.Transform;
			Camera camera = this.GameObj.GetComponent<Camera>();

			Vector3 camAreaTopLeft = camera.GetSpaceCoord(new Vector2(0.0f, 0.0f));
			Vector3 camAreaBottomRight = camera.GetSpaceCoord(DualityApp.TargetResolution);
			Rect camArea = new Rect(
				camAreaTopLeft.X, 
				camAreaTopLeft.Y, 
				camAreaBottomRight.X - camAreaTopLeft.X, 
				camAreaBottomRight.Y - camAreaTopLeft.Y);

			Vector3 targetPos = this.GetTargetPos();
			Vector3 posDiff = (targetPos - transform.Pos);
			float posDiffLength = posDiff.Length;
			if (posDiffLength > 0.0f)
			{
				Vector3 posDiffDir = posDiff.Normalized;
				Vector3 moveBy = posDiffDir * posDiffLength * MathF.Clamp(0.1f * MathF.Pow(2.0f, -this.smoothness) * Time.TimeMult, 0.2f * Time.TimeMult, 1.0f);
				transform.MoveByAbs(moveBy);
			}
		}
		void ICmpInitializable.OnInit(Component.InitContext context)
		{
			if (context == InitContext.Activate)
			{
				Vector3 targetPos = this.GetTargetPos();
				this.GameObj.Transform.Pos = targetPos;
			}
		}
		void ICmpInitializable.OnShutdown(Component.ShutdownContext context) { }
	}
}
