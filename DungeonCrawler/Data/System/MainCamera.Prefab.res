<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="337024049">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="692441258">
      <_items dataType="Array" type="Duality.Component[]" id="1612322336" length="4">
        <item dataType="Struct" type="Duality.Components.Transform" id="2697338981">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">337024049</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">-500</Z>
          </pos>
          <posAbs dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">-500</Z>
          </posAbs>
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="Duality.Components.Camera" id="874299856">
          <active dataType="Bool">true</active>
          <farZ dataType="Float">10000</farZ>
          <focusDist dataType="Float">500</focusDist>
          <gameobj dataType="ObjectRef">337024049</gameobj>
          <nearZ dataType="Float">0</nearZ>
          <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="4159348928">
            <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="63160604" length="4">
              <item dataType="Struct" type="Duality.Components.Camera+Pass" id="186576836">
                <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                <clearDepth dataType="Float">1</clearDepth>
                <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                <input />
                <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                  <contentPath dataType="String">Data\System\ScreenTarget.RenderTarget.res</contentPath>
                </output>
                <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
              </item>
              <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2206107030">
                <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                <clearDepth dataType="Float">1</clearDepth>
                <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                <input />
                <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                  <contentPath dataType="String">Data\System\ScreenTarget.RenderTarget.res</contentPath>
                </output>
                <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
              </item>
              <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2189881984">
                <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                <clearDepth dataType="Float">1</clearDepth>
                <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                <input dataType="Struct" type="Duality.Drawing.BatchInfo" id="1570971208">
                  <dirtyFlag dataType="Enum" type="Duality.Drawing.BatchInfo+DirtyFlag" name="All" value="3" />
                  <hashCode dataType="Int">471599249</hashCode>
                  <mainColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </mainColor>
                  <technique dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.DrawTechnique]]">
                    <contentPath dataType="String">Default:DrawTechnique:Mask</contentPath>
                  </technique>
                  <textures dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.String],[Duality.ContentRef`1[[Duality.Resources.Texture]]]]" id="3847081068" surrogate="true">
                    <header />
                    <body>
                      <mainTex dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Texture]]">
                        <contentPath dataType="String">Data\System\ScreenTex.Texture.res</contentPath>
                      </mainTex>
                    </body>
                  </textures>
                  <uniforms />
                </input>
                <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
              </item>
            </_items>
            <_size dataType="Int">3</_size>
            <_version dataType="Int">3</_version>
          </passes>
          <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
          <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
        </item>
        <item dataType="Struct" type="Duality.Components.SoundListener" id="990505420">
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">337024049</gameobj>
        </item>
      </_items>
      <_size dataType="Int">3</_size>
      <_version dataType="Int">3</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1049659610" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="2582790800">
          <item dataType="Type" id="3633904956" value="Duality.Components.Transform" />
          <item dataType="Type" id="2611966870" value="Duality.Components.Camera" />
          <item dataType="Type" id="3645252584" value="Duality.Components.SoundListener" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="2211327726">
          <item dataType="ObjectRef">2697338981</item>
          <item dataType="ObjectRef">874299856</item>
          <item dataType="ObjectRef">990505420</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">2697338981</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="2073028460">eNPTCMVRHEeb8U1K27ArVQ==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">MainCamera</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
