Shader "Custom/Translucent" {
    Properties {
        _ShadowColor("ShadowColor", Color) = (0.8,0.8,0.8,0.2)
        _NormalMap("NormalMap", 2D) = "bump" {}
        _FakeRefraction("FakeRefraction", Float) = 0.1
        _Matcap("Matcap", 2D) = "white" {}
        _MainTex("MainTex", 2D) = "white" {}
        _MatcapAlpha("MatcapAlpha", Float) = 1
        _Translucency("Translucency", Float) = 0.5
        _Transparency("Transparency", Float) = 0
        _Color("Color", Color) = (0.2391934,0.711025,0.9345238,1)
        [MaterialToggle] _ShadowsOnBackground("ShadowsOnBackground", Float) = 0
        _rimColor("rimColor", Color) = (0.8897059,0.9359582,1,1)
        _rimV("rimV", Float) = 0.5
        _rimpower("rimpower", Float) = 0.2
        _SpecularColor("SpecularColor", Color) = (1,1,1,1)
        _SpecularPower("SpecularPower", Range(0, 1)) = 0.025
        _AnotherRamp("AnotherRamp", 2D) = "white" {}
        [MaterialToggle] _AnotherRampFull("AnotherRampFull", Float) = 0
        _LineWidthS("LineWidthS", Float) = 1
        _LineColor("LineColor", Color) = (0.5,0.5,0.5,1)
        _Cutoff("Alpha Cutoff", Float) = 0.01
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest+50"
            "RenderType"="Opaque"
        }
        LOD 200
        GrabPass{ }
        UsePass "Custom/ZWrite/ZWRITE"
        UsePass "Custom/TranslucentBase/OUTLINE"
        UsePass "Custom/TranslucentBase/FORWARD"
        UsePass "Custom/TranslucentBase/SHADOWCASTER"        
    }
    FallBack "Diffuse"
}
