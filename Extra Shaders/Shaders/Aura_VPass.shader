// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:QQB1AHIAYQA=,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:14,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,atwp:False,stva:48,stmr:240,stmw:240,stcp:5,stps:2,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:7406,x:33109,y:32711,varname:node_7406,prsc:2|emission-8491-OUT,alpha-4585-OUT,clip-6787-OUT,voffset-4276-XYZ;n:type:ShaderForge.SFN_Multiply,id:5291,x:32226,y:33308,varname:node_5291,prsc:2|A-6904-XYZ,B-3080-OUT,C-2579-OUT,D-4259-OUT;n:type:ShaderForge.SFN_NormalVector,id:6910,x:31743,y:33308,prsc:2,pt:False;n:type:ShaderForge.SFN_Color,id:1265,x:32088,y:32708,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9411765,c2:0.05536332,c3:0.3669252,c4:1;n:type:ShaderForge.SFN_Step,id:6787,x:32544,y:33021,varname:node_6787,prsc:2|A-7281-OUT,B-4585-OUT;n:type:ShaderForge.SFN_Multiply,id:4585,x:32325,y:32989,varname:alpha,prsc:2|A-1265-A,B-1065-A;n:type:ShaderForge.SFN_Code,id:4496,x:30698,y:33197,varname:node_4496,prsc:2,code:ZgBsAG8AYQB0ACAAbgBvAGkAcwBlAEUAeAB0AGUAbgBkACAAPQAgAGEAYgBzACgAbgBvAGkAcwBlACkAIAArACAAMQA7AAoAcgBlAHQAdQByAG4AIABWAFAAYQBzAHMAKAB1AHYALAAgAHIAYQBkAGkAdQBzACAAKgAgAG4AbwBpAHMAZQBFAHgAdABlAG4AZAApACAAKgAgAG4AbwBpAHMAZQBFAHgAdABlAG4AZAA7AA==,output:0,fname:GetAuraDistance,width:247,height:168,input:1,input:0,input:0,input_1_label:uv,input_2_label:radius,input_3_label:noise|A-9209-UVOUT,B-4905-OUT,C-7462-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9209,x:30378,y:33217,varname:node_9209,prsc:2,sctp:2;n:type:ShaderForge.SFN_ValueProperty,id:4957,x:30444,y:32627,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:_Radius,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_RemapRange,id:805,x:30129,y:33401,varname:node_805,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.1|IN-3247-OUT;n:type:ShaderForge.SFN_Set,id:1093,x:30629,y:32627,varname:r,prsc:2|IN-4957-OUT;n:type:ShaderForge.SFN_Get,id:3247,x:29910,y:33401,varname:node_3247,prsc:2|IN-1093-OUT;n:type:ShaderForge.SFN_RemapRange,id:3080,x:31979,y:33472,varname:node_3080,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.25|IN-5052-OUT;n:type:ShaderForge.SFN_Get,id:5052,x:31722,y:33472,varname:node_5052,prsc:2|IN-1093-OUT;n:type:ShaderForge.SFN_Tex2d,id:338,x:30251,y:32783,ptovrint:False,ptlb:NoiseTex,ptin:_NoiseTex,varname:_NoiseTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9242421b1edc7d847a32ac92d5e0cb7b,ntxv:1,isnm:False|UVIN-5948-OUT;n:type:ShaderForge.SFN_ScreenPos,id:4710,x:29417,y:32612,varname:node_4710,prsc:2,sctp:1;n:type:ShaderForge.SFN_RemapRange,id:5346,x:30428,y:32783,varname:node_5346,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-338-R;n:type:ShaderForge.SFN_Multiply,id:4905,x:30378,y:33401,varname:node_4905,prsc:2|A-805-OUT,B-9655-OUT;n:type:ShaderForge.SFN_Add,id:5948,x:30037,y:32783,varname:noiseUV,prsc:2|A-7965-OUT,B-2891-OUT;n:type:ShaderForge.SFN_Append,id:4059,x:29620,y:33034,varname:node_4059,prsc:2|A-7563-OUT,B-3607-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7563,x:29411,y:33034,ptovrint:False,ptlb:AnimationU,ptin:_AnimationU,varname:_AnimationU,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3607,x:29411,y:33164,ptovrint:False,ptlb:AnimationV,ptin:_AnimationV,varname:_AnimationV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:4898,x:29620,y:33190,varname:t,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2891,x:29810,y:33034,varname:node_2891,prsc:2|A-4059-OUT,B-4898-T;n:type:ShaderForge.SFN_Code,id:9634,x:30254,y:32308,varname:node_9634,prsc:2,code:cgBlAHQAdQByAG4AIAAtAFUAbgBpAHQAeQBPAGIAagBlAGMAdABUAG8AVgBpAGUAdwBQAG8AcwAoAGYAbABvAGEAdAAzACgAMAAsADAALAAwACkAKQAuAHoAIAAtACAAXwBQAHIAbwBqAGUAYwB0AGkAbwBuAFAAYQByAGEAbQBzAC4AZwA7AA==,output:0,fname:GetCenterZ,width:247,height:132;n:type:ShaderForge.SFN_Set,id:7425,x:30574,y:32311,varname:centerZ,prsc:2|IN-9634-OUT;n:type:ShaderForge.SFN_Multiply,id:7965,x:29810,y:32783,varname:noiseUVbase,prsc:2|A-6379-OUT,B-1275-OUT;n:type:ShaderForge.SFN_Get,id:1275,x:29594,y:33142,varname:node_1275,prsc:2|IN-7425-OUT;n:type:ShaderForge.SFN_Get,id:6106,x:29910,y:33591,varname:node_6106,prsc:2|IN-7425-OUT;n:type:ShaderForge.SFN_Multiply,id:1936,x:30640,y:32783,varname:node_1936,prsc:2|A-5346-OUT,B-7462-OUT;n:type:ShaderForge.SFN_Add,id:4427,x:30838,y:32783,varname:node_4427,prsc:2|A-1936-OUT,B-513-OUT;n:type:ShaderForge.SFN_Vector1,id:513,x:30640,y:32920,varname:node_513,prsc:2,v1:1;n:type:ShaderForge.SFN_Reciprocal,id:9655,x:30129,y:33591,varname:node_9655,prsc:2|IN-6106-OUT;n:type:ShaderForge.SFN_Code,id:557,x:29203,y:32803,varname:node_557,prsc:2,code:ZgBsAG8AYQB0ADQAIABzAGMAcgBlAGUAbgBQAG8AcwAgAD0AIABVAG4AaQB0AHkATwBiAGoAZQBjAHQAVABvAEMAbABpAHAAUABvAHMAKABmAGwAbwBhAHQAMwAoADAALAAwACwAMAApACkAOwAKAHMAYwByAGUAZQBuAFAAbwBzACAAPQAgAGYAbABvAGEAdAA0ACgAIABzAGMAcgBlAGUAbgBQAG8AcwAuAHgAeQAgAC8AIABzAGMAcgBlAGUAbgBQAG8AcwAuAHcALAAgADAALAAgADAAIAApADsACgBzAGMAcgBlAGUAbgBQAG8AcwAuAHkAIAAqAD0AIABfAFAAcgBvAGoAZQBjAHQAaQBvAG4AUABhAHIAYQBtAHMALgB4ADsACgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAyACgAcwBjAHIAZQBlAG4AUABvAHMALgB4ACoAKABfAFMAYwByAGUAZQBuAFAAYQByAGEAbQBzAC4AeAAvAF8AUwBjAHIAZQBlAG4AUABhAHIAYQBtAHMALgB5ACkALAAgAHMAYwByAGUAZQBuAFAAbwBzAC4AeQApADsA,output:1,fname:GetObjectCenterScreenPos,width:313,height:132;n:type:ShaderForge.SFN_Subtract,id:6379,x:29620,y:32783,varname:node_6379,prsc:2|A-4710-UVOUT,B-557-OUT;n:type:ShaderForge.SFN_Append,id:2595,x:31909,y:32972,varname:gradientUV,prsc:2|A-3619-OUT,B-3159-OUT;n:type:ShaderForge.SFN_Vector1,id:3159,x:31732,y:33166,varname:node_3159,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:1065,x:32089,y:32972,ptovrint:False,ptlb:Gradient,ptin:_Gradient,varname:_Gradient,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:True,tagnrm:False,tex:6d919b571e79d424a8160ccd43e04d71,ntxv:0,isnm:False|UVIN-2595-OUT;n:type:ShaderForge.SFN_Blend,id:8491,x:32325,y:32675,varname:node_8491,prsc:2,blmd:12,clmp:True|SRC-1065-RGB,DST-1265-RGB;n:type:ShaderForge.SFN_Clamp01,id:3619,x:31732,y:32972,varname:gradientUVx,prsc:2|IN-5014-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7281,x:32325,y:32877,ptovrint:True,ptlb:Alpha Cutoff,ptin:_Cutoff,varname:_Cutoff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Transform,id:6904,x:31979,y:33308,varname:node_6904,prsc:2,tffrom:1,tfto:3|IN-6910-OUT;n:type:ShaderForge.SFN_Vector3,id:2579,x:31979,y:33646,varname:node_2579,prsc:2,v1:1,v2:1,v3:0.01;n:type:ShaderForge.SFN_Transform,id:4276,x:32414,y:33308,varname:node_4276,prsc:2,tffrom:3,tfto:1|IN-5291-OUT;n:type:ShaderForge.SFN_Divide,id:5014,x:31533,y:32972,varname:node_5014,prsc:2|A-4496-OUT,B-9173-OUT;n:type:ShaderForge.SFN_Slider,id:7462,x:30271,y:33045,ptovrint:False,ptlb:NoiseAmount,ptin:_NoiseAmount,varname:_NoiseAmount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_Max,id:9173,x:31017,y:32783,varname:node_9173,prsc:2|A-4427-OUT,B-8195-OUT;n:type:ShaderForge.SFN_Vector1,id:8195,x:30838,y:32920,varname:node_8195,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:4259,x:31822,y:33800,ptovrint:False,ptlb:GeometryExtend,ptin:_GeometryExtend,varname:_GeometryExtend,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;proporder:1265-4957-338-7563-3607-1065-7281-7462-4259;pass:END;sub:END;*/

Shader "Custom/Aura_VPass" {
    Properties {
        _Color ("Color", Color) = (0.9411765,0.05536332,0.3669252,1)
        _Radius ("Radius", Float ) = 0.1
        _NoiseTex ("NoiseTex", 2D) = "gray" {}
        _AnimationU ("AnimationU", Float ) = 0
        _AnimationV ("AnimationV", Float ) = 0
        [NoScaleOffset]_Gradient ("Gradient", 2D) = "white" {}
        _Cutoff ("Alpha Cutoff", Float ) = 0.01
        _NoiseAmount ("NoiseAmount", Range(0, 2)) = 0.5
        _GeometryExtend ("GeometryExtend", Range(0, 2)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            ColorMask RGB
            
            Stencil {
                Ref 48
                ReadMask 240
                WriteMask 240
                Comp NotEqual
                Pass Replace
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Aura.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            float GetAuraDistance( float2 uv , float radius , float noise ){
            float noiseExtend = abs(noise) + 1;
            return VPass(uv, radius * noiseExtend) * noiseExtend;
            }
            
            uniform float _Radius;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _AnimationU;
            uniform float _AnimationV;
            float GetCenterZ(){
            return -UnityObjectToViewPos(float3(0,0,0)).z - _ProjectionParams.g;
            }
            
            float2 GetObjectCenterScreenPos(){
            float4 screenPos = UnityObjectToClipPos(float3(0,0,0));
            screenPos = float4( screenPos.xy / screenPos.w, 0, 0 );
            screenPos.y *= _ProjectionParams.x;
            return float2(screenPos.x*(_ScreenParams.x/_ScreenParams.y), screenPos.y);
            }
            
            uniform sampler2D _Gradient;
            uniform float _Cutoff;
            uniform float _NoiseAmount;
            uniform float _GeometryExtend;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float3 normalDir : TEXCOORD0;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float r = _Radius;
                v.vertex.xyz += mul( float4((UnityObjectToViewPos( float4(v.normal,0) ).xyz.rgb*(r*0.25+0.0)*float3(1,1,0.01)*_GeometryExtend),0), UNITY_MATRIX_MV ).xyz.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float r = _Radius;
                float centerZ = GetCenterZ();
                float4 t = _Time;
                float2 noiseUV = (((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg-GetObjectCenterScreenPos())*centerZ)+(float2(_AnimationU,_AnimationV)*t.g));
                float4 _NoiseTex_var = tex2D(_NoiseTex,TRANSFORM_TEX(noiseUV, _NoiseTex));
                float2 gradientUV = float2(saturate((GetAuraDistance( sceneUVs.rg , ((r*0.1+0.0)*(1.0 / centerZ)) , _NoiseAmount )/max((((_NoiseTex_var.r*2.0+-1.0)*_NoiseAmount)+1.0),0.0))),0.0);
                float4 _Gradient_var = tex2D(_Gradient,gradientUV);
                float alpha = (_Color.a*_Gradient_var.a);
                clip(step(_Cutoff,alpha) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = saturate((_Gradient_var.rgb > 0.5 ?  (1.0-(1.0-2.0*(_Gradient_var.rgb-0.5))*(1.0-_Color.rgb)) : (2.0*_Gradient_var.rgb*_Color.rgb)) );
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,alpha);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
