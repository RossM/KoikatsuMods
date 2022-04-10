// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:TQBhAHQAQwBhAHAAfABNAGEAaQBuAEwAaQBnAGgAdABpAG4AZwB8AE8AdQB0AGwAaQBuAGUA,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:2,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:0,stmr:1,stmw:1,stcp:5,stps:0,stfa:0,stfz:1,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3142,x:33934,y:32709,varname:node_3142,prsc:2|normal-2255-RGB,emission-7478-OUT,alpha-8189-OUT,clip-1685-OUT,olwid-1023-OUT,olcol-2534-OUT;n:type:ShaderForge.SFN_NormalVector,id:3273,x:31381,y:32256,prsc:2,pt:True;n:type:ShaderForge.SFN_LightAttenuation,id:7401,x:31889,y:32082,varname:node_7401,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7993,x:32082,y:32263,varname:node_7993,prsc:2|A-7401-OUT,B-7882-OUT;n:type:ShaderForge.SFN_Color,id:9252,x:32107,y:31932,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:_ShadowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.85,c2:0.85,c3:0.85,c4:1;n:type:ShaderForge.SFN_Multiply,id:6325,x:33501,y:32856,varname:node_6325,prsc:2|A-4434-OUT,B-5571-OUT;n:type:ShaderForge.SFN_SceneColor,id:1791,x:32443,y:33532,varname:node_1791,prsc:2|UVIN-7770-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1788,x:32076,y:33532,varname:node_1788,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:2255,x:33499,y:32518,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ComponentMask,id:1891,x:31843,y:33690,varname:node_1891,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8254-XYZ;n:type:ShaderForge.SFN_NormalVector,id:277,x:31483,y:33693,prsc:2,pt:True;n:type:ShaderForge.SFN_Transform,id:8254,x:31664,y:33693,varname:node_8254,prsc:2,tffrom:0,tfto:3|IN-277-OUT;n:type:ShaderForge.SFN_Multiply,id:8864,x:32076,y:33690,varname:node_8864,prsc:2|A-1891-OUT,B-8820-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8178,x:31664,y:33947,ptovrint:False,ptlb:FakeRefraction,ptin:_FakeRefraction,varname:_FakeRefraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_RemapRange,id:8820,x:31843,y:33947,varname:node_8820,prsc:2,frmn:-1,frmx:1,tomn:-0.1,tomx:0.1|IN-8178-OUT;n:type:ShaderForge.SFN_Subtract,id:7770,x:32267,y:33532,varname:node_7770,prsc:2|A-1788-UVOUT,B-8864-OUT;n:type:ShaderForge.SFN_Tex2d,id:4227,x:32880,y:31444,ptovrint:False,ptlb:Matcap,ptin:_Matcap,varname:_Matcap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4e7f9841adbcd3c4db9e17dee6a1f471,ntxv:0,isnm:False|UVIN-8731-OUT;n:type:ShaderForge.SFN_Set,id:6799,x:33115,y:31444,varname:matcapRGB,prsc:2|IN-4227-RGB;n:type:ShaderForge.SFN_Set,id:312,x:33313,y:31937,varname:lightRGB,prsc:2|IN-6745-OUT;n:type:ShaderForge.SFN_Get,id:7256,x:33071,y:32704,varname:node_7256,prsc:2|IN-312-OUT;n:type:ShaderForge.SFN_Set,id:8417,x:32626,y:33532,varname:backgroundRGB,prsc:2|IN-1791-RGB;n:type:ShaderForge.SFN_Tex2d,id:8248,x:31907,y:32856,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Get,id:5344,x:32155,y:33090,varname:node_5344,prsc:2|IN-6799-OUT;n:type:ShaderForge.SFN_Lerp,id:9949,x:32396,y:32858,varname:textureRGB,prsc:2|A-8248-RGB,B-5344-OUT,T-3686-OUT;n:type:ShaderForge.SFN_Lerp,id:5079,x:33071,y:32856,varname:node_5079,prsc:2|A-9753-OUT,B-2515-OUT,T-4636-OUT;n:type:ShaderForge.SFN_Blend,id:2515,x:32847,y:32970,varname:node_2515,prsc:2,blmd:10,clmp:True|SRC-9753-OUT,DST-9421-OUT;n:type:ShaderForge.SFN_Get,id:9421,x:32600,y:33050,varname:node_9421,prsc:2|IN-8417-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4636,x:32847,y:33162,ptovrint:False,ptlb:Translucency,ptin:_Translucency,varname:_Translucency,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Get,id:4153,x:33050,y:33024,varname:node_4153,prsc:2|IN-8417-OUT;n:type:ShaderForge.SFN_Lerp,id:5571,x:33286,y:32856,varname:node_5571,prsc:2|A-5079-OUT,B-4153-OUT,T-2185-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2185,x:33071,y:33139,ptovrint:False,ptlb:Transparency,ptin:_Transparency,varname:_Transparency,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:3247,x:31412,y:32885,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2391934,c2:0.711025,c3:0.9345238,c4:1;n:type:ShaderForge.SFN_Multiply,id:9753,x:32621,y:32856,varname:baseRGB,prsc:2|A-3928-OUT,B-9949-OUT,C-7760-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:2936,x:32176,y:32717,ptovrint:False,ptlb:ShadowsOnBackground,ptin:_ShadowsOnBackground,varname:_ShadowsOnBackground,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:3928,x:32396,y:32717,varname:node_3928,prsc:2|A-9587-OUT,B-21-OUT,T-2936-OUT;n:type:ShaderForge.SFN_Get,id:9587,x:32182,y:32509,varname:node_9587,prsc:2|IN-312-OUT;n:type:ShaderForge.SFN_Vector3,id:21,x:32182,y:32577,varname:node_21,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Lerp,id:4434,x:33286,y:32704,varname:node_4434,prsc:2|A-68-OUT,B-7256-OUT,T-6129-OUT;n:type:ShaderForge.SFN_Relay,id:6129,x:32425,y:32658,varname:node_6129,prsc:2|IN-2936-OUT;n:type:ShaderForge.SFN_Vector3,id:68,x:33071,y:32583,varname:node_68,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:8475,x:34142,y:31356,varname:node_8475,prsc:2|A-2719-OUT,B-4716-A;n:type:ShaderForge.SFN_Color,id:4716,x:33739,y:31475,ptovrint:False,ptlb:rimColor,ptin:_rimColor,varname:_rimColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8897059,c2:0.9359582,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:2184,x:34142,y:31674,ptovrint:False,ptlb:rimV,ptin:_rimV,varname:_rimV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Get,id:5444,x:34133,y:31899,varname:node_5444,prsc:2|IN-312-OUT;n:type:ShaderForge.SFN_Set,id:7350,x:32239,y:32263,varname:lighting,prsc:2|IN-7993-OUT;n:type:ShaderForge.SFN_Get,id:6415,x:32673,y:31813,varname:node_6415,prsc:2|IN-7350-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3485,x:34142,y:31536,ptovrint:False,ptlb:rimpower,ptin:_rimpower,varname:_rimpower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_NormalVector,id:132,x:34142,y:31036,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:5802,x:34142,y:31206,varname:node_5802,prsc:2;n:type:ShaderForge.SFN_Add,id:7478,x:33692,y:32856,varname:node_7478,prsc:2|A-6325-OUT,B-9313-OUT,C-3201-OUT;n:type:ShaderForge.SFN_Get,id:9313,x:33480,y:33010,varname:node_9313,prsc:2|IN-7248-OUT;n:type:ShaderForge.SFN_Set,id:7248,x:34839,y:31650,varname:rimRGB,prsc:2|IN-3640-OUT;n:type:ShaderForge.SFN_Set,id:519,x:31601,y:32885,varname:colorRGB,prsc:2|IN-3247-RGB;n:type:ShaderForge.SFN_Get,id:7760,x:32375,y:33011,varname:node_7760,prsc:2|IN-519-OUT;n:type:ShaderForge.SFN_Blend,id:2719,x:33913,y:31356,varname:node_2719,prsc:2,blmd:12,clmp:True|SRC-4716-RGB,DST-2024-OUT;n:type:ShaderForge.SFN_Get,id:2024,x:33718,y:31356,varname:node_2024,prsc:2|IN-519-OUT;n:type:ShaderForge.SFN_Code,id:8731,x:32464,y:31442,varname:matcapUV,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABNAGEAdABjAGEAcABVAFYAKABuAG8AcgBtAGEAbABEAGkAcgBlAGMAdABpAG8AbgAsACAAdgBpAGUAdwBEAGkAcgBlAGMAdABpAG8AbgApADsA,output:1,fname:_GetMatcapUV,width:247,height:132,input:2,input:2,input_1_label:normalDirection,input_2_label:viewDirection|A-377-OUT,B-6981-OUT;n:type:ShaderForge.SFN_NormalVector,id:377,x:32151,y:31320,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:6981,x:32151,y:31476,varname:node_6981,prsc:2;n:type:ShaderForge.SFN_Code,id:3640,x:34534,y:31650,varname:node_3640,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABSAGkAbQBMAGkAZwBoAHQAKABuAG8AcgBtAGEAbAAsACAAdgBpAGUAdwAsACAAcgBpAG0AQwBvAGwAbwByACwAIABzAGgAYQBkAG8AdwBDAG8AbABvAHIALAAgAHIAaQBtAHAAbwB3AGUAcgAsACAAcgBpAG0AVgAsACAAcgBpAG0AUwBoAGEAZABvAHcALAAgADIALgA1ACwAIAAtADAALgA1ACkAOwA=,output:2,fname:_GetRimLight,width:247,height:188,input:2,input:2,input:2,input:0,input:0,input:0,input:2,input_1_label:normal,input_2_label:view,input_3_label:rimColor,input_4_label:rimpower,input_5_label:rimV,input_6_label:rimShadow,input_7_label:shadowColor|A-132-OUT,B-5802-OUT,C-8475-OUT,D-3485-OUT,E-2184-OUT,F-6930-OUT,G-5444-OUT;n:type:ShaderForge.SFN_Vector1,id:6930,x:34154,y:31822,varname:node_6930,prsc:2,v1:0;n:type:ShaderForge.SFN_Set,id:4497,x:32116,y:32938,varname:mainTexAlpha,prsc:2|IN-8248-A;n:type:ShaderForge.SFN_Get,id:8189,x:33671,y:32998,varname:node_8189,prsc:2|IN-4497-OUT;n:type:ShaderForge.SFN_Step,id:1685,x:33692,y:33180,varname:node_1685,prsc:2|A-6306-OUT,B-1274-OUT;n:type:ShaderForge.SFN_Get,id:1274,x:33480,y:33252,varname:node_1274,prsc:2|IN-4497-OUT;n:type:ShaderForge.SFN_Dot,id:6506,x:34008,y:32176,varname:node_6506,prsc:2,dt:1|A-1278-OUT,B-9961-OUT;n:type:ShaderForge.SFN_HalfVector,id:9961,x:33812,y:32327,varname:node_9961,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:208,x:34008,y:32327,varname:node_208,prsc:2,frmn:0,frmx:1,tomn:0,tomx:256|IN-5462-OUT;n:type:ShaderForge.SFN_Power,id:2727,x:34197,y:32176,varname:node_2727,prsc:2|VAL-6506-OUT,EXP-208-OUT;n:type:ShaderForge.SFN_Multiply,id:3995,x:34572,y:32176,varname:node_3995,prsc:2|A-9242-OUT,B-115-OUT,C-3788-RGB,D-3788-A;n:type:ShaderForge.SFN_Color,id:3788,x:34381,y:32424,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:_SpecularColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:2517,x:34928,y:32176,varname:specularRGB,prsc:2|IN-5403-OUT;n:type:ShaderForge.SFN_NormalVector,id:1278,x:33812,y:32176,prsc:2,pt:True;n:type:ShaderForge.SFN_Get,id:3201,x:33480,y:33078,varname:node_3201,prsc:2|IN-2517-OUT;n:type:ShaderForge.SFN_RemapRange,id:9242,x:34381,y:32176,varname:node_9242,prsc:2,frmn:0.8,frmx:1,tomn:0,tomx:1|IN-2727-OUT;n:type:ShaderForge.SFN_Slider,id:5462,x:33679,y:32506,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:_SpecularPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Clamp01,id:5403,x:34758,y:32176,varname:node_5403,prsc:2|IN-3995-OUT;n:type:ShaderForge.SFN_Relay,id:115,x:34440,y:32338,varname:node_115,prsc:2|IN-5462-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:1007,x:31381,y:32671,ptovrint:False,ptlb:AnotherRampFull,ptin:_AnotherRampFull,varname:_AnotherRampFull,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;n:type:ShaderForge.SFN_ValueProperty,id:6306,x:33501,y:33160,ptovrint:True,ptlb:Alpha Cutoff,ptin:_Cutoff,varname:_Cutoff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Code,id:5500,x:32546,y:31933,varname:node_5500,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABBAGQAagB1AHMAdABlAGQAUwBoAGEAZABvAHcAQwBvAGwAbwByACgAcwBoAGEAZABvAHcAQwBvAGwAbwByACwAIAAyACkAOwA=,output:2,fname:_GetAdjustedShadowColor,width:247,height:132,input:3,input_1_label:shadowColor|A-6633-OUT;n:type:ShaderForge.SFN_Append,id:6633,x:32324,y:31932,varname:node_6633,prsc:2|A-9252-RGB,B-9252-A;n:type:ShaderForge.SFN_Code,id:7882,x:31741,y:32282,varname:node_7882,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABSAGEAbQBwACgAbgBvAHIAbQBhAGwALAAgAGEAbgBvAHQAaABlAHIAUgBhAG0AcAAsACAAYQBuAG8AdABoAGUAcgBSAGEAbQBwAEYAdQBsAGwAKQA7AA==,output:0,fname:_GetRamp,width:247,height:132,input:2,input:12,input:0,input_1_label:normal,input_2_label:anotherRamp,input_3_label:anotherRampFull|A-3273-OUT,B-9502-TEX,C-1007-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9502,x:31381,y:32444,ptovrint:False,ptlb:AnotherRamp,ptin:_AnotherRamp,varname:_AnotherRamp,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:True,tagnrm:False,tex:6a47c86a0d6b1c042893ed91d00d5bcc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Code,id:6745,x:32986,y:31937,varname:node_6745,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABMAGkAZwBoAHQAQwBvAGwAbwByACgAbABpAGcAaAB0AGkAbgBnACwAIABhAGQAagB1AHMAdABlAGQAUwBoAGEAZABvAHcAQwBvAGwAbwByACwAIAAwACwAIAAwACkAOwA=,output:2,fname:_GetLightColor,width:247,height:132,input:0,input:2,input_1_label:lighting,input_2_label:adjustedShadowColor|A-6415-OUT,B-5500-OUT;n:type:ShaderForge.SFN_Color,id:4251,x:33511,y:33727,ptovrint:False,ptlb:LineColor,ptin:_LineColor,varname:_LineColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ViewPosition,id:8029,x:33044,y:33394,varname:node_8029,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:4925,x:33044,y:33547,varname:node_4925,prsc:2;n:type:ShaderForge.SFN_Distance,id:6765,x:33242,y:33394,varname:node_6765,prsc:2|A-8029-XYZ,B-4925-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:618,x:33242,y:33581,ptovrint:False,ptlb:LineWidthS,ptin:_LineWidthS,varname:_LineWidthS,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Get,id:7622,x:33490,y:33631,varname:node_7622,prsc:2|IN-519-OUT;n:type:ShaderForge.SFN_Blend,id:2534,x:33693,y:33631,varname:node_2534,prsc:2,blmd:10,clmp:True|SRC-7622-OUT,DST-4251-RGB;n:type:ShaderForge.SFN_Code,id:1023,x:33496,y:33391,varname:node_1023,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABMAGkAbgBlAFcAaQBkAHQAaAAoAGMAYQBtAGUAcgBhAEQAaQBzAHQAYQBuAGMAZQAsACAAMAAsACAAbABpAG4AZQBXAGkAZAB0AGgAUwApADsA,output:0,fname:_GetLineWidth,width:295,height:132,input:0,input:0,input_1_label:cameraDistance,input_2_label:lineWidthS|A-6765-OUT,B-618-OUT;n:type:ShaderForge.SFN_Slider,id:3686,x:32019,y:33185,ptovrint:False,ptlb:MatcapAlpha,ptin:_MatcapAlpha,varname:_MatcapAlpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:9252-2255-8178-4227-8248-4636-2185-3247-2936-4716-2184-3485-3788-5462-1007-6306-9502-618-4251-3686;pass:END;sub:END;*/

Shader "Custom/Translucent_Forward" {
    Properties {
        _ShadowColor ("ShadowColor", Color) = (0.85,0.85,0.85,1)
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _FakeRefraction ("FakeRefraction", Float ) = 0.1
        _Matcap ("Matcap", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _Translucency ("Translucency", Float ) = 0.5
        _Transparency ("Transparency", Float ) = 0
        _Color ("Color", Color) = (0.2391934,0.711025,0.9345238,1)
        [MaterialToggle] _ShadowsOnBackground ("ShadowsOnBackground", Float ) = 0
        _rimColor ("rimColor", Color) = (0.8897059,0.9359582,1,1)
        _rimV ("rimV", Float ) = 0.5
        _rimpower ("rimpower", Float ) = 0.2
        _SpecularColor ("SpecularColor", Color) = (1,1,1,1)
        _SpecularPower ("SpecularPower", Range(0, 1)) = 0
        [MaterialToggle] _AnotherRampFull ("AnotherRampFull", Float ) = 1
        _Cutoff ("Alpha Cutoff", Float ) = 0.01
        [NoScaleOffset]_AnotherRamp ("AnotherRamp", 2D) = "white" {}
        _LineWidthS ("LineWidthS", Float ) = 1
        _LineColor ("LineColor", Color) = (0.5,0.5,0.5,1)
        _MatcapAlpha ("MatcapAlpha", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="Opaque"
        }
        LOD 200
        GrabPass{ }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "MatCap.cginc"
            #include "MainLighting.cginc"
            #include "Outline.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform float _Cutoff;
            uniform float4 _LineColor;
            uniform float _LineWidthS;
            float _GetLineWidth( float cameraDistance , float lineWidthS ){
            return GetLineWidth(cameraDistance, 0, lineWidthS);
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_GetLineWidth( distance(_WorldSpaceCameraPos,objPos.rgb) , _LineWidthS ),1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float mainTexAlpha = _MainTex_var.a;
                clip(step(_Cutoff,mainTexAlpha) - 0.5);
                float3 colorRGB = _Color.rgb;
                return fixed4(saturate(( _LineColor.rgb > 0.5 ? (1.0-(1.0-2.0*(_LineColor.rgb-0.5))*(1.0-colorRGB)) : (2.0*_LineColor.rgb*colorRGB) )),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "MatCap.cginc"
            #include "MainLighting.cginc"
            #include "Outline.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _ShadowColor;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _FakeRefraction;
            uniform sampler2D _Matcap; uniform float4 _Matcap_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Translucency;
            uniform float _Transparency;
            uniform float4 _Color;
            uniform fixed _ShadowsOnBackground;
            uniform float4 _rimColor;
            uniform float _rimV;
            uniform float _rimpower;
            float2 _GetMatcapUV( float3 normalDirection , float3 viewDirection ){
            return GetMatcapUV(normalDirection, viewDirection);
            }
            
            float3 _GetRimLight( float3 normal , float3 view , float3 rimColor , float rimpower , float rimV , float rimShadow , float3 shadowColor ){
            return GetRimLight(normal, view, rimColor, shadowColor, rimpower, rimV, rimShadow, 2.5, -0.5);
            }
            
            uniform float4 _SpecularColor;
            uniform float _SpecularPower;
            uniform fixed _AnotherRampFull;
            uniform float _Cutoff;
            float3 _GetAdjustedShadowColor( float4 shadowColor ){
            return GetAdjustedShadowColor(shadowColor, 2);
            }
            
            float _GetRamp( float3 normal , sampler2D anotherRamp , float anotherRampFull ){
            return GetRamp(normal, anotherRamp, anotherRampFull);
            }
            
            uniform sampler2D _AnotherRamp;
            float3 _GetLightColor( float lighting , float3 adjustedShadowColor ){
            return GetLightColor(lighting, adjustedShadowColor, 0, 0);
            }
            
            uniform float _MatcapAlpha;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float mainTexAlpha = _MainTex_var.a;
                clip(step(_Cutoff,mainTexAlpha) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float lighting = (attenuation*_GetRamp( normalDirection , _AnotherRamp , _AnotherRampFull ));
                float3 lightRGB = _GetLightColor( lighting , _GetAdjustedShadowColor( float4(_ShadowColor.rgb,_ShadowColor.a) ) );
                float2 matcapUV = _GetMatcapUV( normalDirection , viewDirection );
                float4 _Matcap_var = tex2D(_Matcap,TRANSFORM_TEX(matcapUV, _Matcap));
                float3 matcapRGB = _Matcap_var.rgb;
                float3 colorRGB = _Color.rgb;
                float3 baseRGB = (lerp(lightRGB,float3(1,1,1),_ShadowsOnBackground)*lerp(_MainTex_var.rgb,matcapRGB,_MatcapAlpha)*colorRGB);
                float3 backgroundRGB = tex2D( _GrabTexture, (sceneUVs.rg-(mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb.rg*(_FakeRefraction*0.1+0.0)))).rgb;
                float3 rimRGB = _GetRimLight( normalDirection , viewDirection , (saturate((_rimColor.rgb > 0.5 ?  (1.0-(1.0-2.0*(_rimColor.rgb-0.5))*(1.0-colorRGB)) : (2.0*_rimColor.rgb*colorRGB)) )*_rimColor.a) , _rimpower , _rimV , 0.0 , lightRGB );
                float3 specularRGB = saturate(((pow(max(0,dot(normalDirection,halfDirection)),(_SpecularPower*256.0+0.0))*5.0+-4.0)*_SpecularPower*_SpecularColor.rgb*_SpecularColor.a));
                float3 emissive = ((lerp(float3(1,1,1),lightRGB,_ShadowsOnBackground)*lerp(lerp(baseRGB,saturate(( backgroundRGB > 0.5 ? (1.0-(1.0-2.0*(backgroundRGB-0.5))*(1.0-baseRGB)) : (2.0*backgroundRGB*baseRGB) )),_Translucency),backgroundRGB,_Transparency))+rimRGB+specularRGB);
                float3 finalColor = emissive;
                return fixed4(finalColor,mainTexAlpha);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "MatCap.cginc"
            #include "MainLighting.cginc"
            #include "Outline.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Cutoff;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float mainTexAlpha = _MainTex_var.a;
                clip(step(_Cutoff,mainTexAlpha) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
