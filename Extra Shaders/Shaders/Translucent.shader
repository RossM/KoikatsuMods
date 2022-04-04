﻿Shader "Custom/Translucent" {
    Properties {
        _ShadowColor ("ShadowColor", Color) = (0.8,0.8,0.8,0.2)
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _FakeRefraction ("FakeRefraction", Float ) = 0.1
        _Matcap ("Matcap", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _MatcapAlpha ("MatcapAlpha", Float ) = 1
        _Translucency ("Translucency", Float ) = 0.5
        _Transparency ("Transparency", Float ) = 0
        _Color ("Color", Color) = (0.2391934,0.711025,0.9345238,1)
        [MaterialToggle] _ShadowsOnBackground ("ShadowsOnBackground", Float ) = 0
        _rimColor ("rimColor", Color) = (0.8897059,0.9359582,1,1)
        _rimV ("rimV", Float ) = 0.5
        _rimpower ("rimpower", Float ) = 0.2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest+50"
            "RenderType"="Opaque"
        }
        LOD 200
        GrabPass{ }
        UsePass "Custom/ZWrite/ZWRITE"
        UsePass "Custom/TranslucentBase/FORWARD"
        UsePass "Custom/TranslucentBase/SHADOWCASTER"        
    }
    FallBack "Diffuse"
}
