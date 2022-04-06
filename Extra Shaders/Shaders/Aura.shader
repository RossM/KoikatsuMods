Shader "Custom/Aura" {
    Properties {
        _Color ("Color", Color) = (0.8897059,0.150465,0.2881167,0.45)
        _Radius ("Radius", Float ) = 0.2
        _NoiseTex ("NoiseTex", 2D) = "gray" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _AnimationU ("AnimationU", Float ) = 0
        _AnimationV ("AnimationV", Float ) = -0.06
        _NoiseAmount ("NoiseAmount", Float ) = 0.5
        _DetailMask ("DetailMask", 2D) = "white" {}
        _LineWidthS ("LineWidthS", Float ) = 1
        _Gradient ("Gradient", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 300
        UsePass "Custom/AuraStencil/STENCIL"
        GrabPass { }
        UsePass "Custom/AuraBase/FORWARD"
        UsePass "Custom/AuraBase/SHADOWCASTER"
    }
    FallBack "Diffuse"
}
