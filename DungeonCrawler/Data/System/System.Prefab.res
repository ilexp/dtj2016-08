<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="3979434978">
    <active dataType="Bool">true</active>
    <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2297929573">
      <_items dataType="Array" type="Duality.GameObject[]" id="3131332502" length="8">
        <item dataType="Struct" type="Duality.GameObject" id="72252855">
          <active dataType="Bool">true</active>
          <children />
          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3726303703">
            <_items dataType="Array" type="Duality.Component[]" id="3618486798" length="4">
              <item dataType="Struct" type="DungeonCrawler.BackgroundLoop" id="267797275">
                <active dataType="Bool">true</active>
                <gameobj dataType="ObjectRef">72252855</gameobj>
                <sound dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Sound]]">
                  <contentPath dataType="String">Data\Audio\BackgroundLoop.Sound.res</contentPath>
                </sound>
              </item>
            </_items>
            <_size dataType="Int">1</_size>
            <_version dataType="Int">1</_version>
          </compList>
          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="93860800" surrogate="true">
            <header />
            <body>
              <keys dataType="Array" type="System.Object[]" id="2904923229">
                <item dataType="Type" id="1335559014" value="DungeonCrawler.BackgroundLoop" />
              </keys>
              <values dataType="Array" type="System.Object[]" id="2287029112">
                <item dataType="ObjectRef">267797275</item>
              </values>
            </body>
          </compMap>
          <compTransform />
          <identifier dataType="Struct" type="System.Guid" surrogate="true">
            <header>
              <data dataType="Array" type="System.Byte[]" id="3483308023">PzEzVX3ae0y7EYtmeUdI8w==</data>
            </header>
            <body />
          </identifier>
          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
          <name dataType="String">BackgroundLoop</name>
          <parent dataType="ObjectRef">3979434978</parent>
          <prefabLink />
        </item>
        <item dataType="Struct" type="Duality.GameObject" id="470065671">
          <active dataType="Bool">true</active>
          <children />
          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3849193575">
            <_items dataType="Array" type="Duality.Component[]" id="3195126862" length="4">
              <item dataType="Struct" type="DungeonCrawler.ScreenRenderTargetResizer" id="340576950">
                <active dataType="Bool">true</active>
                <gameobj dataType="ObjectRef">470065671</gameobj>
                <screenTarget dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                  <contentPath dataType="String">Data\System\ScreenTarget.RenderTarget.res</contentPath>
                </screenTarget>
              </item>
            </_items>
            <_size dataType="Int">1</_size>
            <_version dataType="Int">1</_version>
          </compList>
          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1261829760" surrogate="true">
            <header />
            <body>
              <keys dataType="Array" type="System.Object[]" id="1638769229">
                <item dataType="Type" id="345215526" value="DungeonCrawler.ScreenRenderTargetResizer" />
              </keys>
              <values dataType="Array" type="System.Object[]" id="2464741560">
                <item dataType="ObjectRef">340576950</item>
              </values>
            </body>
          </compMap>
          <compTransform />
          <identifier dataType="Struct" type="System.Guid" surrogate="true">
            <header>
              <data dataType="Array" type="System.Byte[]" id="3881160231">ju5byF8/xkyI9+t91E7FTw==</data>
            </header>
            <body />
          </identifier>
          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
          <name dataType="String">ScreenRenderTargetResizer</name>
          <parent dataType="ObjectRef">3979434978</parent>
          <prefabLink />
        </item>
        <item dataType="Struct" type="Duality.GameObject" id="1307605855">
          <active dataType="Bool">true</active>
          <children />
          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="811073407">
            <_items dataType="Array" type="Duality.Component[]" id="2653900078" length="4">
              <item dataType="Struct" type="DungeonCrawler.VisibilityManager" id="2995902416">
                <active dataType="Bool">true</active>
                <gameobj dataType="ObjectRef">1307605855</gameobj>
                <lastSeenTile dataType="Int">1</lastSeenTile>
                <playerPos dataType="Struct" type="Duality.Vector2" />
                <seenTile dataType="Int">0</seenTile>
                <unseenTile dataType="Int">2</unseenTile>
                <visibilityRenderer />
              </item>
            </_items>
            <_size dataType="Int">1</_size>
            <_version dataType="Int">1</_version>
          </compList>
          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3801128800" surrogate="true">
            <header />
            <body>
              <keys dataType="Array" type="System.Object[]" id="1656607925">
                <item dataType="Type" id="1762688758" value="DungeonCrawler.VisibilityManager" />
              </keys>
              <values dataType="Array" type="System.Object[]" id="1294293832">
                <item dataType="ObjectRef">2995902416</item>
              </values>
            </body>
          </compMap>
          <compTransform />
          <identifier dataType="Struct" type="System.Guid" surrogate="true">
            <header>
              <data dataType="Array" type="System.Byte[]" id="313626623">bzVISLj/MU625/rOywXqAQ==</data>
            </header>
            <body />
          </identifier>
          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
          <name dataType="String">VisibilityManager</name>
          <parent dataType="ObjectRef">3979434978</parent>
          <prefabLink />
        </item>
        <item dataType="Struct" type="Duality.GameObject" id="784744154">
          <active dataType="Bool">true</active>
          <children />
          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2858576846">
            <_items dataType="Array" type="Duality.Component[]" id="2789937616" length="4">
              <item dataType="Struct" type="DungeonCrawler.Player" id="4022065749">
                <active dataType="Bool">true</active>
                <actor dataType="Struct" type="DungeonCrawler.ActorController" id="1654069714">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="Struct" type="Duality.GameObject" id="4252407703">
                    <active dataType="Bool">true</active>
                    <children />
                    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2206968384">
                      <_items dataType="Array" type="Duality.Component[]" id="4247014172" length="4">
                        <item dataType="Struct" type="Duality.Components.Transform" id="2317755339">
                          <active dataType="Bool">true</active>
                          <angle dataType="Float">0</angle>
                          <angleAbs dataType="Float">0</angleAbs>
                          <angleVel dataType="Float">0</angleVel>
                          <angleVelAbs dataType="Float">0</angleVelAbs>
                          <deriveAngle dataType="Bool">true</deriveAngle>
                          <gameobj dataType="ObjectRef">4252407703</gameobj>
                          <ignoreParent dataType="Bool">false</ignoreParent>
                          <parentTransform />
                          <pos dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">-300</X>
                            <Y dataType="Float">180</Y>
                            <Z dataType="Float">0</Z>
                          </pos>
                          <posAbs dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">-300</X>
                            <Y dataType="Float">180</Y>
                            <Z dataType="Float">0</Z>
                          </posAbs>
                          <scale dataType="Float">1</scale>
                          <scaleAbs dataType="Float">1</scaleAbs>
                          <vel dataType="Struct" type="Duality.Vector3" />
                          <velAbs dataType="Struct" type="Duality.Vector3" />
                        </item>
                        <item dataType="Struct" type="DungeonCrawler.ActorRenderer" id="1747241107">
                          <active dataType="Bool">true</active>
                          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                            <A dataType="Byte">255</A>
                            <B dataType="Byte">255</B>
                            <G dataType="Byte">255</G>
                            <R dataType="Byte">255</R>
                          </colorTint>
                          <customMat />
                          <depthScale dataType="Float">0.01</depthScale>
                          <gameobj dataType="ObjectRef">4252407703</gameobj>
                          <height dataType="Float">0</height>
                          <isVertical dataType="Bool">true</isVertical>
                          <offset dataType="Float">-0.12</offset>
                          <rect dataType="Struct" type="Duality.Rect">
                            <H dataType="Float">25</H>
                            <W dataType="Float">25</W>
                            <X dataType="Float">-13</X>
                            <Y dataType="Float">-13</Y>
                          </rect>
                          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                            <contentPath dataType="String">Data\Graphics\DungeonItems.Material.res</contentPath>
                          </sharedMat>
                          <spriteIndex dataType="Int">64</spriteIndex>
                          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                        </item>
                        <item dataType="ObjectRef">1654069714</item>
                      </_items>
                      <_size dataType="Int">3</_size>
                      <_version dataType="Int">3</_version>
                    </compList>
                    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2118616142" surrogate="true">
                      <header />
                      <body>
                        <keys dataType="Array" type="System.Object[]" id="3199487890">
                          <item dataType="Type" id="1757369936" value="Duality.Components.Transform" />
                          <item dataType="Type" id="4291439982" value="DungeonCrawler.ActorRenderer" />
                          <item dataType="Type" id="1996974124" value="DungeonCrawler.ActorController" />
                        </keys>
                        <values dataType="Array" type="System.Object[]" id="1614671818">
                          <item dataType="ObjectRef">2317755339</item>
                          <item dataType="ObjectRef">1747241107</item>
                          <item dataType="ObjectRef">1654069714</item>
                        </values>
                      </body>
                    </compMap>
                    <compTransform dataType="ObjectRef">2317755339</compTransform>
                    <identifier dataType="Struct" type="System.Guid" surrogate="true">
                      <header>
                        <data dataType="Array" type="System.Byte[]" id="3774576546">K9CuCNjG7UeK4jO3jLCEUQ==</data>
                      </header>
                      <body />
                    </identifier>
                    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                    <name dataType="String">PlayerChar</name>
                    <parent dataType="ObjectRef">3979434978</parent>
                    <prefabLink />
                  </gameobj>
                  <gridPos dataType="Struct" type="Duality.Point2">
                    <X dataType="Int">3</X>
                    <Y dataType="Int">17</Y>
                  </gridPos>
                </actor>
                <gameobj dataType="ObjectRef">784744154</gameobj>
                <gameOverScene dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Scene]]">
                  <contentPath dataType="String">Data\System\GameOver.Scene.res</contentPath>
                </gameOverScene>
                <keys dataType="Struct" type="System.Collections.Generic.List`1[[DungeonCrawler.DoorType]]" id="1816149569">
                  <_items dataType="Array" type="DungeonCrawler.DoorType[]" id="3804818862" length="0" />
                  <_size dataType="Int">0</_size>
                  <_version dataType="Int">0</_version>
                </keys>
                <pickupSound dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Sound]]">
                  <contentPath dataType="String">Data\Audio\PickupItem.Sound.res</contentPath>
                </pickupSound>
                <unlockSound dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Sound]]">
                  <contentPath dataType="String">Data\Audio\UnlockDoor.Sound.res</contentPath>
                </unlockSound>
              </item>
            </_items>
            <_size dataType="Int">1</_size>
            <_version dataType="Int">1</_version>
          </compList>
          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2371118410" surrogate="true">
            <header />
            <body>
              <keys dataType="Array" type="System.Object[]" id="40959628">
                <item dataType="Type" id="4220813732" value="DungeonCrawler.Player" />
              </keys>
              <values dataType="Array" type="System.Object[]" id="3203490806">
                <item dataType="ObjectRef">4022065749</item>
              </values>
            </body>
          </compMap>
          <compTransform />
          <identifier dataType="Struct" type="System.Guid" surrogate="true">
            <header>
              <data dataType="Array" type="System.Byte[]" id="537695768">/nlo0q7h5UeX1x01oL0UwQ==</data>
            </header>
            <body />
          </identifier>
          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
          <name dataType="String">Player</name>
          <parent dataType="ObjectRef">3979434978</parent>
          <prefabLink />
        </item>
        <item dataType="Struct" type="Duality.GameObject" id="277211304">
          <active dataType="Bool">true</active>
          <children />
          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="209631524">
            <_items dataType="Array" type="Duality.Component[]" id="2421888708">
              <item dataType="Struct" type="Duality.Components.Transform" id="2637526236">
                <active dataType="Bool">true</active>
                <angle dataType="Float">0</angle>
                <angleAbs dataType="Float">0</angleAbs>
                <angleVel dataType="Float">0</angleVel>
                <angleVelAbs dataType="Float">0</angleVelAbs>
                <deriveAngle dataType="Bool">true</deriveAngle>
                <gameobj dataType="ObjectRef">277211304</gameobj>
                <ignoreParent dataType="Bool">false</ignoreParent>
                <parentTransform />
                <pos dataType="Struct" type="Duality.Vector3">
                  <X dataType="Float">-300</X>
                  <Y dataType="Float">180</Y>
                  <Z dataType="Float">-500</Z>
                </pos>
                <posAbs dataType="Struct" type="Duality.Vector3">
                  <X dataType="Float">-300</X>
                  <Y dataType="Float">180</Y>
                  <Z dataType="Float">-500</Z>
                </posAbs>
                <scale dataType="Float">1</scale>
                <scaleAbs dataType="Float">1</scaleAbs>
                <vel dataType="Struct" type="Duality.Vector3" />
                <velAbs dataType="Struct" type="Duality.Vector3" />
              </item>
              <item dataType="Struct" type="Duality.Components.Camera" id="814487111">
                <active dataType="Bool">true</active>
                <farZ dataType="Float">10000</farZ>
                <focusDist dataType="Float">500</focusDist>
                <gameobj dataType="ObjectRef">277211304</gameobj>
                <nearZ dataType="Float">0</nearZ>
                <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1329836603">
                  <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="810829526" length="4">
                    <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3133058336">
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
                    <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3695533966">
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
                    <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3864699964">
                      <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                      <clearDepth dataType="Float">1</clearDepth>
                      <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                      <input dataType="Struct" type="Duality.Drawing.BatchInfo" id="890665592">
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
                        <textures dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.String],[Duality.ContentRef`1[[Duality.Resources.Texture]]]]" id="2943215980" surrogate="true">
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
              <item dataType="Struct" type="Duality.Components.SoundListener" id="930692675">
                <active dataType="Bool">true</active>
                <gameobj dataType="ObjectRef">277211304</gameobj>
              </item>
              <item dataType="Struct" type="DungeonCrawler.CameraController" id="4152317061">
                <active dataType="Bool">true</active>
                <gameobj dataType="ObjectRef">277211304</gameobj>
                <smoothness dataType="Float">1</smoothness>
                <targetObj dataType="ObjectRef">4252407703</targetObj>
              </item>
            </_items>
            <_size dataType="Int">4</_size>
            <_version dataType="Int">4</_version>
          </compList>
          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="186234134" surrogate="true">
            <header />
            <body>
              <keys dataType="Array" type="System.Object[]" id="172372078">
                <item dataType="ObjectRef">1757369936</item>
                <item dataType="Type" id="2666485328" value="Duality.Components.Camera" />
                <item dataType="Type" id="2307534190" value="Duality.Components.SoundListener" />
                <item dataType="Type" id="2484561964" value="DungeonCrawler.CameraController" />
              </keys>
              <values dataType="Array" type="System.Object[]" id="4046319562">
                <item dataType="ObjectRef">2637526236</item>
                <item dataType="ObjectRef">814487111</item>
                <item dataType="ObjectRef">930692675</item>
                <item dataType="ObjectRef">4152317061</item>
              </values>
            </body>
          </compMap>
          <compTransform dataType="ObjectRef">2637526236</compTransform>
          <identifier dataType="Struct" type="System.Guid" surrogate="true">
            <header>
              <data dataType="Array" type="System.Byte[]" id="3607365726">rq9lSuCBZ0ejeNuMX3izYQ==</data>
            </header>
            <body />
          </identifier>
          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
          <name dataType="String">MainCamera</name>
          <parent dataType="ObjectRef">3979434978</parent>
          <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="568321824">
            <changes />
            <obj dataType="ObjectRef">277211304</obj>
            <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\System\MainCamera.Prefab.res</contentPath>
            </prefab>
          </prefabLink>
        </item>
        <item dataType="ObjectRef">4252407703</item>
      </_items>
      <_size dataType="Int">6</_size>
      <_version dataType="Int">6</_version>
    </children>
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="295154280">
      <_items dataType="Array" type="Duality.Component[]" id="2976412687" length="0" />
      <_size dataType="Int">0</_size>
      <_version dataType="Int">0</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4203556015" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="1097710820" length="0" />
        <values dataType="Array" type="System.Object[]" id="497331734" length="0" />
      </body>
    </compMap>
    <compTransform />
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="505271008">RhjUW+WNcEOzxDu8CE2p1A==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">System</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
