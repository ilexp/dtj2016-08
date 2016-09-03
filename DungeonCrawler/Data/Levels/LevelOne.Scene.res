﻿<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="182316359">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2734779877">
        <_items dataType="Array" type="Duality.Component[]" id="2351090326">
          <item dataType="Struct" type="Duality.Components.Transform" id="2542631291">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">182316359</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="719592166">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">182316359</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="835797730">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">182316359</gameobj>
          </item>
          <item dataType="Struct" type="DungeonCrawler.CameraController" id="4057422116">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">182316359</gameobj>
            <smoothness dataType="Float">1</smoothness>
            <targetObj dataType="Struct" type="Duality.GameObject" id="749336928">
              <active dataType="Bool">true</active>
              <children />
              <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="211962524">
                <_items dataType="Array" type="Duality.Component[]" id="3875810244" length="4">
                  <item dataType="Struct" type="Duality.Components.Transform" id="3109651860">
                    <active dataType="Bool">true</active>
                    <angle dataType="Float">0</angle>
                    <angleAbs dataType="Float">0</angleAbs>
                    <angleVel dataType="Float">0</angleVel>
                    <angleVelAbs dataType="Float">0</angleVelAbs>
                    <deriveAngle dataType="Bool">true</deriveAngle>
                    <gameobj dataType="ObjectRef">749336928</gameobj>
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
                  <item dataType="Struct" type="DungeonCrawler.ActorRenderer" id="2539137628">
                    <active dataType="Bool">true</active>
                    <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                      <A dataType="Byte">255</A>
                      <B dataType="Byte">255</B>
                      <G dataType="Byte">255</G>
                      <R dataType="Byte">255</R>
                    </colorTint>
                    <customMat />
                    <depthScale dataType="Float">0.01</depthScale>
                    <gameobj dataType="ObjectRef">749336928</gameobj>
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
                  <item dataType="Struct" type="DungeonCrawler.ActorController" id="2445966235">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="ObjectRef">749336928</gameobj>
                    <gridPos dataType="Struct" type="Duality.Point2">
                      <X dataType="Int">3</X>
                      <Y dataType="Int">17</Y>
                    </gridPos>
                  </item>
                </_items>
                <_size dataType="Int">3</_size>
                <_version dataType="Int">3</_version>
              </compList>
              <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1026417174" surrogate="true">
                <header />
                <body>
                  <keys dataType="Array" type="System.Object[]" id="2536048694">
                    <item dataType="Type" id="664648032" value="Duality.Components.Transform" />
                    <item dataType="Type" id="1804915854" value="DungeonCrawler.ActorRenderer" />
                    <item dataType="Type" id="3991890812" value="DungeonCrawler.ActorController" />
                  </keys>
                  <values dataType="Array" type="System.Object[]" id="3213349018">
                    <item dataType="ObjectRef">3109651860</item>
                    <item dataType="ObjectRef">2539137628</item>
                    <item dataType="ObjectRef">2445966235</item>
                  </values>
                </body>
              </compMap>
              <compTransform dataType="ObjectRef">3109651860</compTransform>
              <identifier dataType="Struct" type="System.Guid" surrogate="true">
                <header>
                  <data dataType="Array" type="System.Byte[]" id="1678507222">CLqeIjdSmEOP3lxFCXjw8A==</data>
                </header>
                <body />
              </identifier>
              <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
              <name dataType="String">PlayerChar</name>
              <parent />
              <prefabLink />
            </targetObj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2683563368" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2338906255">
            <item dataType="ObjectRef">664648032</item>
            <item dataType="Type" id="1254681774" value="Duality.Components.Camera" />
            <item dataType="Type" id="249611978" value="Duality.Components.SoundListener" />
            <item dataType="Type" id="3089804318" value="DungeonCrawler.CameraController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3778472160">
            <item dataType="ObjectRef">2542631291</item>
            <item dataType="ObjectRef">719592166</item>
            <item dataType="ObjectRef">835797730</item>
            <item dataType="ObjectRef">4057422116</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2542631291</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4098398941">7ql4DKWcEESTfZq8VYVKuQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2985467695">
        <changes />
        <obj dataType="ObjectRef">182316359</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\System\MainCamera.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="233687761">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="1102098995">
        <_items dataType="Array" type="Duality.GameObject[]" id="567818790" length="8">
          <item dataType="Struct" type="Duality.GameObject" id="2429394257">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="853697297">
              <_items dataType="Array" type="Duality.Component[]" id="1738642158" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="494741893">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2429394257</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="Struct" type="Duality.Components.Transform" id="2594002693">
                    <active dataType="Bool">true</active>
                    <angle dataType="Float">0</angle>
                    <angleAbs dataType="Float">0</angleAbs>
                    <angleVel dataType="Float">0</angleVel>
                    <angleVelAbs dataType="Float">0</angleVelAbs>
                    <deriveAngle dataType="Bool">true</deriveAngle>
                    <gameobj dataType="ObjectRef">233687761</gameobj>
                    <ignoreParent dataType="Bool">false</ignoreParent>
                    <parentTransform />
                    <pos dataType="Struct" type="Duality.Vector3" />
                    <posAbs dataType="Struct" type="Duality.Vector3" />
                    <scale dataType="Float">1</scale>
                    <scaleAbs dataType="Float">1</scaleAbs>
                    <vel dataType="Struct" type="Duality.Vector3" />
                    <velAbs dataType="Struct" type="Duality.Vector3" />
                  </parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="136278978">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2429394257</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="2806371974" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="2486235008">H4sIAAAAAAAEAM2YO24UQRCGex8zOzv74C0hAoRAQ0BmCSdOYRMkQi5ASM4N2ABOgMidkJM4XyLELUg4BchVLfW3+in3ELkl+1d3V/3VVV2urvGjlNLdvz9n6XJce3h++fvbjXL2fqx6a/DJ4JXBOhDpx4JzbseyPDNY3i7PMjN4oCyslX+DhwdRegORc99bGayhQFipRWM5rVdwCzdTObaBnlm4p/xrQOKLC4MLj+DS9hYGnUGbhP4MAM4jQxwzkE0iUYymtLCX/jn1tFzMN+YRXJZ7Fdma8yWVehPM5phNxyY7qd8abCL/bPbYb6yFY4tSZKjIM88XP0RvAEP5Npl1TP0g2TP1FotRfrqk3xjufd4pBZmKSUlSwfYOSi0nkdQD9Y7W3Z7yb+d6k3+T7dtylvPsiZ3IoDfokpJEXn81WKk6GAGpvUB8nlzp3wuDh+qvKldov4g+1Q6XRBYMFYXTYYMZy6iT+WJ0f3DzlGY3iprDbuy7wU+DH1LSs4CLMwUVhZNk8G8f+Hek0GAG6vr66S/6b69uY1nqyaL6+dTgY2C9Q5QGWeuiF91mt2AhZFHF+OQ/6+cg05upLys7M4uVj5I9RHyvUXqk5p89DrGjQlBfDkpyz8Rklvvi1fVTdyy+18GHVtljScchvA29T044dqEKda6Y0PPu4p3Ba3lqdYgcCdWx7JZwbKFYQPbB1flOgzP75yKyWYh6WmO5g4DwxqZBlBrM+B3Q4YVlt3ZExiHrZ9R5cLBe01sZCRmlqCOjJN+/gIwFMIfgDJIVT4/pveRiRVzUu3IY/dQFRzqPPmx9TGEv6CO9GfpS3UvJ79TRHVn40VvhX4Jjnj5z7BnZr2vx34p6+AOMS1D4iBEAAA==</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Graphics\DungeonTiles.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="1127502409">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">2429394257</gameobj>
                  <offset dataType="Float">-0</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2136490912" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2860717755">
                  <item dataType="ObjectRef">664648032</item>
                  <item dataType="Type" id="4021559510" value="Duality.Plugins.Tilemaps.Tilemap" />
                  <item dataType="Type" id="4222528474" value="Duality.Plugins.Tilemaps.TilemapRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1284232232">
                  <item dataType="ObjectRef">494741893</item>
                  <item dataType="ObjectRef">136278978</item>
                  <item dataType="ObjectRef">1127502409</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">494741893</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1196814129">/N3SIB/EMECWAXTBusNlnQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">BaseLayer</name>
            <parent dataType="ObjectRef">233687761</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="3749272871">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="601253415">
              <_items dataType="Array" type="Duality.Component[]" id="1247869390" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1814620507">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">3749272871</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">2594002693</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="1456157592">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3749272871</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="1564729412" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="2067936836">H4sIAAAAAAAEAO3RywkAIAwE0S3CAmzCD9h/X4rxkosFLBMIjxyHVEnl7NIdAAAAAAAAMKd9Lge6a9hjBDnTqHYGOdPoqRvihqAiiBEAAA==</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Graphics\DungeonTiles.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="2447381023">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">3749272871</gameobj>
                  <offset dataType="Float">-0.01</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2904726016" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3889473805">
                  <item dataType="ObjectRef">664648032</item>
                  <item dataType="ObjectRef">4021559510</item>
                  <item dataType="ObjectRef">4222528474</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="2929615288">
                  <item dataType="ObjectRef">1814620507</item>
                  <item dataType="ObjectRef">1456157592</item>
                  <item dataType="ObjectRef">2447381023</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1814620507</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3309486567">aRI4IUGVrU+DMGsLYjTy4w==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">FireLayer</name>
            <parent dataType="ObjectRef">233687761</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="3074543193">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2382099801">
              <_items dataType="Array" type="Duality.Component[]" id="1590047694" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1139890829">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">3074543193</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">2594002693</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="781427914">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3074543193</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="1132113486" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="3161652944">H4sIAAAAAAAEAO3BMQEAAAjAoIUwgP1TmsIP2GoCAAAA4NsBd4sGdogRAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Graphics\FieldOfViewTiles.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="1772651345">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">3074543193</gameobj>
                  <offset dataType="Float">-100</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="Flat" value="0" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="955742208" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3947908979">
                  <item dataType="ObjectRef">664648032</item>
                  <item dataType="ObjectRef">4021559510</item>
                  <item dataType="ObjectRef">4222528474</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="2484039608">
                  <item dataType="ObjectRef">1139890829</item>
                  <item dataType="ObjectRef">781427914</item>
                  <item dataType="ObjectRef">1772651345</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1139890829</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1611738265">L4kmRmd170eJToRGonohmQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">FieldOfViewLayer</name>
            <parent dataType="ObjectRef">233687761</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2508738269">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4127674189">
              <_items dataType="Array" type="Duality.Component[]" id="1968885798" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="574085905">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2508738269</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">2594002693</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1276547497">
                  <active dataType="Bool">true</active>
                  <angularDamp dataType="Float">0.3</angularDamp>
                  <angularVel dataType="Float">0</angularVel>
                  <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
                  <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
                  <colFilter />
                  <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
                  <continous dataType="Bool">false</continous>
                  <explicitInertia dataType="Float">0</explicitInertia>
                  <explicitMass dataType="Float">0</explicitMass>
                  <fixedAngle dataType="Bool">false</fixedAngle>
                  <gameobj dataType="ObjectRef">2508738269</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2526386089">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1432420878" length="16" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">4168</_version>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="623032188">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2508738269</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.299999982</shapeFriction>
                  <shapeRestitution dataType="Float">0.299999982</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="3043715480">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">136278978</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">1456157592</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">781427914</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3855971000" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="914906407">
                  <item dataType="ObjectRef">664648032</item>
                  <item dataType="Type" id="296822222" value="Duality.Components.Physics.RigidBody" />
                  <item dataType="Type" id="734489930" value="Duality.Plugins.Tilemaps.TilemapCollider" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1953494528">
                  <item dataType="ObjectRef">574085905</item>
                  <item dataType="ObjectRef">1276547497</item>
                  <item dataType="ObjectRef">623032188</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">574085905</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2218678373">KAploe0JQESw6T1tT6rBtQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">WorldGeometry</name>
            <parent dataType="ObjectRef">233687761</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1493157791">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2366017887">
              <_items dataType="Array" type="Duality.Component[]" id="2837316718" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="3853472723">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">1493157791</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">2594002693</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0.001</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0.001</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </posAbs>
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="260967019">
                  <active dataType="Bool">true</active>
                  <angularDamp dataType="Float">0.3</angularDamp>
                  <angularVel dataType="Float">0</angularVel>
                  <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
                  <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat2" value="2" />
                  <colFilter />
                  <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="None" value="0" />
                  <continous dataType="Bool">false</continous>
                  <explicitInertia dataType="Float">0</explicitInertia>
                  <explicitMass dataType="Float">0</explicitMass>
                  <fixedAngle dataType="Bool">false</fixedAngle>
                  <gameobj dataType="ObjectRef">1493157791</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3503433579">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="252476534" length="22" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">280</_version>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="3902419006">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1493157791</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">false</roundedCorners>
                  <shapeFriction dataType="Float">0.299999982</shapeFriction>
                  <shapeRestitution dataType="Float">0.299999982</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="1520409938">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer2" value="4" />
                      <SourceTilemap dataType="ObjectRef">136278978</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3503983392" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2043738197">
                  <item dataType="ObjectRef">664648032</item>
                  <item dataType="ObjectRef">296822222</item>
                  <item dataType="ObjectRef">734489930</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="2581200200">
                  <item dataType="ObjectRef">3853472723</item>
                  <item dataType="ObjectRef">260967019</item>
                  <item dataType="ObjectRef">3902419006</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3853472723</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2984689247">u47bkyQHREmKpMzFLaoxYA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">VisibilityBlocker</name>
            <parent dataType="ObjectRef">233687761</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1027481784">
        <_items dataType="Array" type="Duality.Component[]" id="1473312857" length="4">
          <item dataType="ObjectRef">2594002693</item>
          <item dataType="Struct" type="DungeonCrawler.LevelMap" id="3336055435">
            <active dataType="Bool">true</active>
            <baseMap dataType="ObjectRef">136278978</baseMap>
            <baseMapRenderer dataType="ObjectRef">1127502409</baseMapRenderer>
            <baseMapTransform dataType="ObjectRef">494741893</baseMapTransform>
            <fireGrowth dataType="Struct" type="DungeonCrawler.FireGrowth" id="2073743186">
              <active dataType="Bool">true</active>
              <collisionMap dataType="ObjectRef">136278978</collisionMap>
              <fireMap dataType="ObjectRef">1456157592</fireMap>
              <fireTileCount dataType="Int">4</fireTileCount>
              <firstFireTile dataType="Int">53</firstFireTile>
              <gameobj dataType="ObjectRef">233687761</gameobj>
              <growthTimer dataType="Int">0</growthTimer>
            </fireGrowth>
            <fireMap dataType="ObjectRef">1456157592</fireMap>
            <fireMapRenderer dataType="ObjectRef">2447381023</fireMapRenderer>
            <fireMapTransform dataType="ObjectRef">1814620507</fireMapTransform>
            <gameobj dataType="ObjectRef">233687761</gameobj>
          </item>
          <item dataType="ObjectRef">2073743186</item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1996581977" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="867878548">
            <item dataType="ObjectRef">664648032</item>
            <item dataType="Type" id="78506852" value="DungeonCrawler.LevelMap" />
            <item dataType="Type" id="2591943190" value="DungeonCrawler.FireGrowth" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="729774134">
            <item dataType="ObjectRef">2594002693</item>
            <item dataType="ObjectRef">3336055435</item>
            <item dataType="ObjectRef">2073743186</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2594002693</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2076955440">84oE4ukgn0CD988EcaahvQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Map</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">749336928</item>
    <item dataType="Struct" type="Duality.GameObject" id="2781806516">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="760929930">
        <_items dataType="Array" type="Duality.Component[]" id="3653966816" length="4">
          <item dataType="Struct" type="DungeonCrawler.Player" id="1724160815">
            <active dataType="Bool">true</active>
            <actor dataType="ObjectRef">2445966235</actor>
            <gameobj dataType="ObjectRef">2781806516</gameobj>
            <gameOverScene dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Scene]]">
              <contentPath dataType="String">Data\System\GameOver.Scene.res</contentPath>
            </gameOverScene>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="710544666" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2191967600">
            <item dataType="Type" id="3502816572" value="DungeonCrawler.Player" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2145775342">
            <item dataType="ObjectRef">1724160815</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1407990476">MrdaGpSVz0iwBCpg+IOrSQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Player</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4173853147">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1827996073">
        <_items dataType="Array" type="Duality.Component[]" id="3002205710" length="4">
          <item dataType="Struct" type="DungeonCrawler.ScreenRenderTargetResizer" id="4044364426">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4173853147</gameobj>
            <screenTarget dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
              <contentPath dataType="String">Data\System\ScreenTarget.RenderTarget.res</contentPath>
            </screenTarget>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1058410432" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4164207907">
            <item dataType="Type" id="969617510" value="DungeonCrawler.ScreenRenderTargetResizer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2494695544">
            <item dataType="ObjectRef">4044364426</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="832255369">3bj9mTqWGkmV3Pcrs+qnHA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ScreenRenderTargetResizer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3961658581">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3419965863">
        <_items dataType="Array" type="Duality.Component[]" id="1831226318" length="4">
          <item dataType="Struct" type="DungeonCrawler.VisibilityManager" id="1354987846">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3961658581</gameobj>
            <lastSeenTile dataType="Int">1</lastSeenTile>
            <playerPos dataType="Struct" type="Duality.Vector2" />
            <seenTile dataType="Int">0</seenTile>
            <unseenTile dataType="Int">2</unseenTile>
            <visibilityRenderer dataType="ObjectRef">1772651345</visibilityRenderer>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="509734912" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2824751501">
            <item dataType="Type" id="3428234534" value="DungeonCrawler.VisibilityManager" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="108964792">
            <item dataType="ObjectRef">1354987846</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2988826727">3FMw9RL+IE+dxOdbwUxLKQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">VisibilityManager</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">2429394257</item>
    <item dataType="ObjectRef">3749272871</item>
    <item dataType="ObjectRef">3074543193</item>
    <item dataType="ObjectRef">2508738269</item>
    <item dataType="ObjectRef">1493157791</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->