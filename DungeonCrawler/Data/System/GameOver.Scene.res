<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="756238">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2380336280">
        <_items dataType="Array" type="Duality.Component[]" id="3116386860" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="2361071170">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">756238</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3" />
            <posAbs dataType="Struct" type="Duality.Vector3" />
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1642922806">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">756238</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">49</H>
              <W dataType="Float">228</W>
              <X dataType="Float">-114</X>
              <Y dataType="Float">-24.5</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Graphics\GameOver.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3729519902" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="816555866">
            <item dataType="Type" id="2353529344" value="Duality.Components.Transform" />
            <item dataType="Type" id="4263722958" value="Duality.Components.Renderers.SpriteRenderer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1335516090">
            <item dataType="ObjectRef">2361071170</item>
            <item dataType="ObjectRef">1642922806</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2361071170</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="664157530">ucFg8WuapUufC2sA+41YEg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">GameOver</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="217329759">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2128957341">
        <_items dataType="Array" type="Duality.Component[]" id="1566632678" length="4">
          <item dataType="Struct" type="DungeonCrawler.GameOverScreen" id="2879162925">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">217329759</gameobj>
            <startGameScene dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Scene]]">
              <contentPath dataType="String">Data\Levels\LevelOne.Scene.res</contentPath>
            </startGameScene>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="226508024" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2733340919">
            <item dataType="Type" id="4189632142" value="DungeonCrawler.GameOverScreen" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3764867648">
            <item dataType="ObjectRef">2879162925</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="22793557">aHQcSegzcESxanb9q+82Rw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">GameOverScreen</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2888268362">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1664039188">
        <_items dataType="Array" type="Duality.Component[]" id="4001671268" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="953615998">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2888268362</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="3425544169">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2888268362</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="3541749733">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2888268362</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4031244598" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2170018238">
            <item dataType="ObjectRef">2353529344</item>
            <item dataType="Type" id="3331883024" value="Duality.Components.Camera" />
            <item dataType="Type" id="914805998" value="Duality.Components.SoundListener" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="497198090">
            <item dataType="ObjectRef">953615998</item>
            <item dataType="ObjectRef">3425544169</item>
            <item dataType="ObjectRef">3541749733</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">953615998</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2931272142">vj5e9XmjxUSYIfoy9P/uMQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2893292464">
        <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="1940569544">
          <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="2839385708" length="4" />
          <_size dataType="Int">0</_size>
          <_version dataType="Int">12</_version>
        </changes>
        <obj dataType="ObjectRef">2888268362</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\System\MainCamera.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="728488196">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4079702970">
        <_items dataType="Array" type="Duality.Component[]" id="728338432" length="4">
          <item dataType="Struct" type="DungeonCrawler.ScreenRenderTargetResizer" id="598999475">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">728488196</gameobj>
            <screenTarget dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
              <contentPath dataType="String">Data\System\ScreenTarget.RenderTarget.res</contentPath>
            </screenTarget>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="345071034" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2987502080">
            <item dataType="Type" id="3432324252" value="DungeonCrawler.ScreenRenderTargetResizer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="860532686">
            <item dataType="ObjectRef">598999475</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2319317660">CZi9BdatHkG5hIOOzboWEw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ScreenRenderTargetResizer</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
