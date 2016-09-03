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
	public class ScreenRenderTargetResizer : Component, ICmpUpdatable
	{
		private ContentRef<RenderTarget> screenTarget  = null;

		public ContentRef<RenderTarget> ScreenTarget
		{
			get { return this.screenTarget; }
			set { this.screenTarget = value; }
		}

		void ICmpUpdatable.OnUpdate()
		{
			RenderTarget renderTarget = this.screenTarget.Res;
			Point2 targetSize = new Point2(
				MathF.RoundToInt((DualityApp.TargetResolution.X + 1.0f) * 0.5f),
				MathF.RoundToInt((DualityApp.TargetResolution.Y + 1.0f) * 0.5f));
			if (targetSize.X != renderTarget.Width ||
				targetSize.Y != renderTarget.Height)
			{
				foreach (ContentRef<Texture> texRef in renderTarget.Targets)
				{
					texRef.Res.Size = targetSize;
					texRef.Res.ReloadData();
				}
				renderTarget.SetupTarget();
				Log.Game.Write(
					"Updated RenderTarget '{2}' to size {0}x{1}", 
					renderTarget.Width, 
					renderTarget.Height,
					this.screenTarget);
			}
		}
	}
}
