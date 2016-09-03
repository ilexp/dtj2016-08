using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality.Editor;

namespace DungeonCrawler.Editor
{
	/// <summary>
	/// Defines a Duality editor plugin.
	/// </summary>
    public class DungeonCrawlerEditorPlugin : EditorPlugin
	{
		public override string Id
		{
			get { return "DungeonCrawlerEditorPlugin"; }
		}
	}
}
