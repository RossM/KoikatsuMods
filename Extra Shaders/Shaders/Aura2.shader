Shader "Custom/Aura2" {
    Properties {
        _Size1 ("Size1", Float ) = 0.1
        _Size2 ("Size2", Float ) = 0.1
        _Color ("Color", Color) = (0.8897059,0.150465,0.2881167,0.45)
        _Radius ("Radius", Float ) = 0.1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 300
        UsePass "Custom/AuraStencil/STENCIL"
        UsePass "Custom/AuraBase/FORWARD"
        UsePass "Custom/AuraBase/SHADOWCASTER"
    }
    FallBack "Diffuse"
}
