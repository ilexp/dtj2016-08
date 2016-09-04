using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Components;
using Duality.Audio;
using Duality.Resources;

namespace DungeonCrawler
{
	public class BackgroundLoop : Component, ICmpInitializable
	{
		private ContentRef<Sound> sound;

		[DontSerialize] private SoundInstance instance;

		public ContentRef<Sound> Sound
		{
			get { return this.sound; }
			set { this.sound = value; }
		}

		void ICmpInitializable.OnInit(Component.InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext != DualityApp.ExecutionContext.Editor)
			{
				this.instance = DualityApp.Sound.PlaySound(this.sound);
				this.instance.Looped = true;
			}
		}
		void ICmpInitializable.OnShutdown(Component.ShutdownContext context)
		{
			if (context == ShutdownContext.Deactivate)
			{
				if (this.instance != null)
				{
					this.instance.FadeOut(1.0f);
					this.instance = null;
				}
			}
		}
	}
}
