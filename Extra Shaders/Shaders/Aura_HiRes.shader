Shader "Custom/Aura_HiRes" {
    Properties {
        _Color ("Color", Color) = (0.9411765,0.05536332,0.3669252,1)
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
        LOD 600
        UsePass "Custom/AuraStencil/STENCIL"
        GrabPass { }
        UsePass "Custom/AuraBase_HiRes/FORWARD"
        UsePass "Custom/AuraBase_HiRes/SHADOWCASTER"
    }
    FallBack "Custom/Aura"
}   
