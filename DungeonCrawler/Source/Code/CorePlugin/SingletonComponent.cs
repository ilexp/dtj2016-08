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
	public abstract class SingletonComponent<T> : Component, ICmpInitializable 
		where T : SingletonComponent<T>, new()
	{
		private static T current = null;
		public static T Current
		{
			get 
			{
				if (current == null)
					CreateInstance();
				return current;
			}
		}
		private static void CreateInstance()
		{
			GameObject obj = new GameObject(typeof(T).Name);
			current = obj.AddComponent<T>();
			Scene.Current.AddObject(obj);
		}


		public virtual void OnInit(Component.InitContext context)
		{
			if (context == InitContext.Activate)
			{
				current = this as T;
			}
		}
		public virtual void OnShutdown(Component.ShutdownContext context)
		{
			if (context == ShutdownContext.Deactivate)
			{
				if (current == this)
					current = null;
			}
		}
	}
}
