Shader "Custom/Aura" {
    Properties {
        _Color ("Color", Color) = (0.9411765,0.05536332,0.3669252,1)
        _Radius ("Radius", Float ) = 0.2
        _NoiseTex ("NoiseTex", 2D) = "gray" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _AnimationU ("AnimationU", Float ) = 0
        _AnimationV ("AnimationV", Float ) = -0.06
        _NoiseAmount("NoiseAmount", Range(-2, 2)) = 0.5
        _DetailMask ("DetailMask", 2D) = "white" {}
        _LineWidthS ("LineWidthS", Float ) = 1
        _Gradient ("Gradient", 2D) = "white" {}
        _GeometryExtend("GeometryExtend", Range(0, 2)) = 1
        _Cutoff("Alpha cutoff", Range(0,1)) = 0.01
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+100"
            "RenderType"="Transparent"
            "ForceNoShadowCasting" = "True"
        }
        LOD 300
        UsePass "Custom/Aura_ResetAlpha/RESETALPHA"
        UsePass "Custom/Aura_Stencil/STENCIL"
        GrabPass { }
        UsePass "Custom/Aura_HPass/HPASS"
        GrabPass { }
        UsePass "Custom/Aura_VPass/FORWARD"
    }
}
