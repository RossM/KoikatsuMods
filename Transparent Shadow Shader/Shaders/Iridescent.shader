// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:Shader Forge/main_hair,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:2,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:2,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2030,x:33492,y:33294,varname:node_2030,prsc:2|normal-1583-RGB,emission-9900-OUT,alpha-4567-OUT,clip-8530-OUT,olwid-8107-OUT,olcol-6929-RGB;n:type:ShaderForge.SFN_Tex2d,id:3845,x:32686,y:32839,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6360-UVOUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:124,x:31332,y:32177,varname:node_124,prsc:2;n:type:ShaderForge.SFN_Transform,id:8182,x:31541,y:32177,varname:viewSpaceReflection,prsc:2,tffrom:0,tfto:3|IN-124-OUT;n:type:ShaderForge.SFN_Add,id:8326,x:31752,y:32249,varname:node_8326,prsc:2|A-8182-XYZ,B-4082-OUT;n:type:ShaderForge.SFN_Vector3,id:4082,x:31541,y:32404,varname:node_4082,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Length,id:5783,x:31938,y:32249,varname:node_5783,prsc:2|IN-8326-OUT;n:type:ShaderForge.SFN_Divide,id:4765,x:32138,y:32249,varname:node_4765,prsc:2|A-511-OUT,B-5783-OUT;n:type:ShaderForge.SFN_ComponentMask,id:511,x:31938,y:32099,varname:node_511,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8182-XYZ;n:type:ShaderForge.SFN_Set,id:2653,x:32306,y:32249,varname:matcapUV,prsc:2|IN-4765-OUT;n:type:ShaderForge.SFN_Set,id:3417,x:33082,y:32818,varname:textureRGB,prsc:2|IN-677-OUT;n:type:ShaderForge.SFN_Set,id:764,x:33063,y:32940,varname:textureA,prsc:2|IN-3845-A;n:type:ShaderForge.SFN_Tex2d,id:1583,x:32484,y:33125,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-940-UVOUT;n:type:ShaderForge.SFN_NormalVector,id:4886,x:30325,y:33975,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:3950,x:30496,y:33975,varname:node_3950,prsc:2,dt:1|A-4886-OUT,B-6006-OUT;n:type:ShaderForge.SFN_TexCoord,id:940,x:32282,y:33125,varname:node_940,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_LightVector,id:6006,x:30325,y:34126,varname:node_6006,prsc:2;n:type:ShaderForge.SFN_Lerp,id:4093,x:32462,y:33683,varname:node_4093,prsc:2|A-122-OUT,B-8445-OUT,T-6526-OUT;n:type:ShaderForge.SFN_Tex2d,id:5977,x:32475,y:32454,ptovrint:False,ptlb:HairGloss,ptin:_HairGloss,varname:_HairGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8724-OUT;n:type:ShaderForge.SFN_TexCoord,id:9017,x:32034,y:32475,varname:node_9017,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Color,id:4573,x:29822,y:32722,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:3106,x:31527,y:34239,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:_ShadowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:0.8,c3:0.8,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5007,x:29822,y:32482,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:_ColorMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8424-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8424,x:29586,y:32482,varname:node_8424,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:2969,x:29822,y:32963,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6061,x:29822,y:33200,ptovrint:False,ptlb:Color3,ptin:_Color3,varname:_Color3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ChannelBlend,id:2262,x:30146,y:32658,varname:baseColor,prsc:2,chbt:1|M-5007-RGB,R-4573-RGB,G-2969-RGB,B-6061-RGB,BTM-4212-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5352,x:31638,y:32899,ptovrint:False,ptlb:SpeclarHeight,ptin:_SpeclarHeight,varname:_SpeclarHeight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.95;n:type:ShaderForge.SFN_Lerp,id:4276,x:31869,y:32746,varname:node_4276,prsc:2|A-4710-OUT,B-6987-OUT,T-5352-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4710,x:31638,y:32601,varname:node_4710,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4808-XYZ;n:type:ShaderForge.SFN_Append,id:5885,x:32034,y:32642,varname:node_5885,prsc:2|A-1908-OUT,B-4276-OUT;n:type:ShaderForge.SFN_Color,id:6929,x:33267,y:34054,ptovrint:False,ptlb:LineColor,ptin:_LineColor,varname:_LineColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:7056,x:32917,y:33870,ptovrint:True,ptlb:linewidthG,ptin:_linewidthG,varname:_linewidthG,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:6774,x:30766,y:31835,varname:node_6774,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5789,x:30956,y:31835,ptovrint:False,ptlb:DetailMask,ptin:_DetailMask,varname:_DetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-6774-UVOUT;n:type:ShaderForge.SFN_Set,id:8630,x:31186,y:31992,varname:detailMaskB,prsc:2|IN-5789-B;n:type:ShaderForge.SFN_Multiply,id:677,x:32883,y:32818,varname:node_677,prsc:2|A-2197-OUT,B-3845-RGB;n:type:ShaderForge.SFN_Set,id:874,x:32707,y:32507,varname:glossRGB,prsc:2|IN-5977-RGB;n:type:ShaderForge.SFN_Add,id:8724,x:32212,y:32475,varname:hairGlossUV,prsc:2|A-9017-UVOUT,B-5885-OUT;n:type:ShaderForge.SFN_Vector1,id:1908,x:31869,y:32642,varname:node_1908,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6987,x:31638,y:32801,varname:node_6987,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:8944,x:31288,y:32601,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:4808,x:31461,y:32601,varname:node_4808,prsc:2,tffrom:0,tfto:3|IN-8944-OUT;n:type:ShaderForge.SFN_ComponentMask,id:543,x:30686,y:32661,varname:node_543,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8127-OUT;n:type:ShaderForge.SFN_Set,id:324,x:30856,y:32661,varname:colorRGB,prsc:2|IN-543-OUT;n:type:ShaderForge.SFN_Set,id:3312,x:31180,y:31869,varname:detailMaskG,prsc:2|IN-5789-G;n:type:ShaderForge.SFN_Vector1,id:4903,x:30496,y:34193,varname:node_4903,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:104,x:30676,y:33975,varname:rampUV,prsc:2|A-3950-OUT,B-4903-OUT;n:type:ShaderForge.SFN_Color,id:9286,x:31319,y:34565,ptovrint:False,ptlb:ambientshadowG,ptin:_ambientshadowG,varname:_ambientshadowG,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ViewPosition,id:9521,x:32581,y:34011,varname:node_9521,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:6909,x:32581,y:34151,varname:node_6909,prsc:2;n:type:ShaderForge.SFN_Distance,id:1377,x:32746,y:34011,varname:node_1377,prsc:2|A-9521-XYZ,B-6909-XYZ;n:type:ShaderForge.SFN_RemapRange,id:4160,x:32917,y:34011,varname:node_4160,prsc:2,frmn:0,frmx:1,tomn:0.0005,tomx:0.002|IN-1377-OUT;n:type:ShaderForge.SFN_Multiply,id:8720,x:33083,y:33870,varname:node_8720,prsc:2|A-7056-OUT,B-4160-OUT,C-9055-OUT;n:type:ShaderForge.SFN_Clamp01,id:8107,x:33265,y:33870,varname:node_8107,prsc:2|IN-8720-OUT;n:type:ShaderForge.SFN_LightColor,id:334,x:32461,y:33548,varname:node_334,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:2214,x:30851,y:34200,ptovrint:False,ptlb:_RampG,ptin:_RampG,varname:_node_2214,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8054,x:31123,y:33972,varname:_RampG_var,prsc:2,ntxv:0,isnm:False|UVIN-104-OUT,TEX-2214-TEX;n:type:ShaderForge.SFN_Tangent,id:9243,x:30528,y:33358,varname:node_9243,prsc:2;n:type:ShaderForge.SFN_Dot,id:4931,x:30711,y:33235,varname:node_4931,prsc:2,dt:0|A-8439-OUT,B-9243-OUT;n:type:ShaderForge.SFN_Bitangent,id:2883,x:30532,y:33629,varname:node_2883,prsc:2;n:type:ShaderForge.SFN_Dot,id:4814,x:30714,y:33495,varname:node_4814,prsc:2,dt:0|A-2294-OUT,B-2883-OUT;n:type:ShaderForge.SFN_Append,id:2277,x:30911,y:33237,varname:iridescenceUV,prsc:2|A-4931-OUT,B-4814-OUT;n:type:ShaderForge.SFN_TexCoord,id:6360,x:32496,y:32920,varname:node_6360,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6456,x:31097,y:33237,varname:_IridescenceTex_var,prsc:2,ntxv:0,isnm:False|UVIN-2277-OUT,TEX-5223-TEX;n:type:ShaderForge.SFN_Set,id:6263,x:31542,y:33232,varname:iridescenceRGB,prsc:2|IN-7126-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8028,x:32928,y:32191,ptovrint:False,ptlb:IridescenceAlpha,ptin:_IridescenceAlpha,varname:_IridescenceAlpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9055,x:32917,y:34224,ptovrint:False,ptlb:LineWidthS,ptin:_LineWidthS,varname:_LineWidthS,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Get,id:4567,x:33251,y:33554,varname:node_4567,prsc:2|IN-764-OUT;n:type:ShaderForge.SFN_Get,id:8530,x:33251,y:33613,varname:node_8530,prsc:2|IN-764-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:2313,x:31123,y:34155,varname:node_2313,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1745,x:31362,y:33972,varname:node_1745,prsc:2|A-8054-R,B-2313-OUT;n:type:ShaderForge.SFN_Set,id:4255,x:31552,y:33972,varname:brightness,prsc:2|IN-1745-OUT;n:type:ShaderForge.SFN_Multiply,id:3698,x:33320,y:32076,varname:node_3698,prsc:2|A-9854-OUT,B-9317-OUT,C-8028-OUT;n:type:ShaderForge.SFN_Get,id:9317,x:32907,y:32113,varname:node_9317,prsc:2|IN-4255-OUT;n:type:ShaderForge.SFN_Set,id:6228,x:32055,y:34329,varname:shadowColorRGB,prsc:2|IN-1887-OUT;n:type:ShaderForge.SFN_Get,id:122,x:32250,y:33683,varname:node_122,prsc:2|IN-6228-OUT;n:type:ShaderForge.SFN_Get,id:2742,x:30127,y:32978,varname:node_2742,prsc:2|IN-6228-OUT;n:type:ShaderForge.SFN_Get,id:763,x:30127,y:33041,varname:node_763,prsc:2|IN-3312-OUT;n:type:ShaderForge.SFN_Lerp,id:5172,x:30324,y:32855,varname:node_5172,prsc:2|A-4469-OUT,B-2742-OUT,T-763-OUT;n:type:ShaderForge.SFN_Multiply,id:8127,x:30511,y:32661,varname:node_8127,prsc:2|A-2262-OUT,B-5172-OUT;n:type:ShaderForge.SFN_Lerp,id:1887,x:31895,y:34329,varname:node_1887,prsc:2|A-2342-OUT,B-8640-OUT,T-8758-OUT;n:type:ShaderForge.SFN_Vector3,id:8640,x:31696,y:34402,varname:node_8640,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Get,id:6526,x:32250,y:33867,varname:node_6526,prsc:2|IN-4255-OUT;n:type:ShaderForge.SFN_RemapRange,id:2342,x:31696,y:34239,varname:node_2342,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3106-RGB;n:type:ShaderForge.SFN_Vector3,id:8445,x:32271,y:33744,varname:node_8445,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Vector3,id:4469,x:30148,y:32855,varname:node_4469,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Vector3,id:4212,x:29822,y:33411,varname:node_4212,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Set,id:6574,x:33494,y:32076,varname:iridescenceFactor,prsc:2|IN-3698-OUT;n:type:ShaderForge.SFN_Power,id:9854,x:32928,y:31937,varname:node_9854,prsc:2|VAL-4053-OUT,EXP-8257-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6093,x:32520,y:32129,ptovrint:False,ptlb:IridescencePower,ptin:_IridescencePower,varname:_IridescencePower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_HalfVector,id:2294,x:30532,y:33495,varname:node_2294,prsc:2;n:type:ShaderForge.SFN_HalfVector,id:8439,x:30528,y:33235,varname:node_8439,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1584,x:32311,y:31937,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:8647,x:32311,y:32095,varname:node_8647,prsc:2;n:type:ShaderForge.SFN_Dot,id:4053,x:32515,y:31937,varname:node_4053,prsc:2,dt:4|A-1584-OUT,B-8647-OUT;n:type:ShaderForge.SFN_NormalVector,id:3513,x:32795,y:30768,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:1570,x:32795,y:30938,varname:node_1570,prsc:2;n:type:ShaderForge.SFN_Dot,id:505,x:33002,y:30768,varname:node_505,prsc:2,dt:1|A-3513-OUT,B-1570-OUT;n:type:ShaderForge.SFN_OneMinus,id:4452,x:33210,y:30768,varname:node_4452,prsc:2|IN-505-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4748,x:33002,y:30950,ptovrint:False,ptlb:rimpower,ptin:_rimpower,varname:_rimpower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Power,id:9030,x:33399,y:30768,varname:node_9030,prsc:2|VAL-4452-OUT,EXP-2360-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1697,x:33865,y:31689,ptovrint:False,ptlb:rimV,ptin:_rimV,varname:_rimV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Set,id:4629,x:34733,y:31516,varname:rimRGB,prsc:2|IN-4396-OUT;n:type:ShaderForge.SFN_RemapRange,id:2360,x:33210,y:30922,varname:node_2360,prsc:2,frmn:0,frmx:1,tomn:1,tomx:10|IN-4748-OUT;n:type:ShaderForge.SFN_Clamp01,id:4967,x:33764,y:30768,varname:node_4967,prsc:2|IN-152-OUT;n:type:ShaderForge.SFN_RemapRange,id:152,x:33575,y:30768,varname:node_152,prsc:2,frmn:0.32,frmx:0.5,tomn:0,tomx:1|IN-9030-OUT;n:type:ShaderForge.SFN_Get,id:6364,x:32671,y:33601,varname:node_6364,prsc:2|IN-4629-OUT;n:type:ShaderForge.SFN_Multiply,id:2972,x:32692,y:33376,varname:node_2972,prsc:2|A-4706-OUT,B-334-RGB,C-4093-OUT;n:type:ShaderForge.SFN_Add,id:9900,x:32887,y:33376,varname:node_9900,prsc:2|A-2972-OUT,B-7503-OUT,C-6364-OUT,D-5645-OUT;n:type:ShaderForge.SFN_Get,id:7503,x:32671,y:33529,varname:node_7503,prsc:2|IN-874-OUT;n:type:ShaderForge.SFN_Get,id:4706,x:32440,y:33376,varname:node_4706,prsc:2|IN-3417-OUT;n:type:ShaderForge.SFN_Set,id:3135,x:31506,y:34539,varname:shadowStrength,prsc:2|IN-9286-A;n:type:ShaderForge.SFN_Get,id:8758,x:31675,y:34539,varname:node_8758,prsc:2|IN-3135-OUT;n:type:ShaderForge.SFN_Get,id:9867,x:33282,y:31521,varname:node_9867,prsc:2|IN-3312-OUT;n:type:ShaderForge.SFN_Get,id:4829,x:33282,y:31669,varname:node_4829,prsc:2|IN-3135-OUT;n:type:ShaderForge.SFN_Set,id:5595,x:33948,y:30768,varname:rimValue,prsc:2|IN-4967-OUT;n:type:ShaderForge.SFN_Get,id:656,x:33844,y:31809,varname:node_656,prsc:2|IN-5595-OUT;n:type:ShaderForge.SFN_RemapRange,id:2084,x:33478,y:31669,varname:node_2084,prsc:2,frmn:0,frmx:1,tomn:1.5,tomx:1|IN-4829-OUT;n:type:ShaderForge.SFN_Multiply,id:3646,x:33686,y:31521,varname:node_3646,prsc:2|A-9867-OUT,B-2084-OUT;n:type:ShaderForge.SFN_Color,id:320,x:34033,y:31196,ptovrint:False,ptlb:rimColor,ptin:_rimColor,varname:_rimColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.706,c2:0.735,c3:0.741,c4:1;n:type:ShaderForge.SFN_Clamp01,id:4396,x:34552,y:31516,varname:node_4396,prsc:2|IN-7277-OUT;n:type:ShaderForge.SFN_OneMinus,id:6668,x:33865,y:31521,varname:node_6668,prsc:2|IN-3646-OUT;n:type:ShaderForge.SFN_Multiply,id:7621,x:34036,y:31521,varname:node_7621,prsc:2|A-6668-OUT,B-1697-OUT,C-656-OUT;n:type:ShaderForge.SFN_Lerp,id:7277,x:34366,y:31516,varname:node_7277,prsc:2|A-320-RGB,B-4918-OUT,T-5985-OUT;n:type:ShaderForge.SFN_Vector3,id:4918,x:34036,y:31398,varname:node_4918,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Tex2dAsset,id:5223,x:30906,y:33521,ptovrint:False,ptlb:IridescenceTex,ptin:_IridescenceTex,varname:_IridescenceTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:5985,x:34199,y:31674,varname:node_5985,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-7621-OUT;n:type:ShaderForge.SFN_RemapRange,id:8257,x:32703,y:32113,varname:node_8257,prsc:2,frmn:0,frmx:1,tomn:1,tomx:10|IN-6093-OUT;n:type:ShaderForge.SFN_Get,id:2197,x:32665,y:32753,varname:node_2197,prsc:2|IN-324-OUT;n:type:ShaderForge.SFN_Multiply,id:7126,x:31330,y:33232,varname:node_7126,prsc:2|A-6456-RGB,B-100-OUT;n:type:ShaderForge.SFN_Get,id:100,x:31076,y:33438,varname:node_100,prsc:2|IN-6574-OUT;n:type:ShaderForge.SFN_Get,id:5645,x:32671,y:33683,varname:node_5645,prsc:2|IN-6263-OUT;proporder:3845-1583-5977-4573-3106-5007-2969-6061-5352-6929-5789-8028-9055-6093-4748-1697-320-5223;pass:END;sub:END;*/

Shader "Custom/Iridescent" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _HairGloss ("HairGloss", 2D) = "black" {}
        _Color ("Color", Color) = (1,1,1,1)
        _ShadowColor ("ShadowColor", Color) = (0.8,0.8,0.8,1)
        _ColorMask ("ColorMask", 2D) = "black" {}
        _Color2 ("Color2", Color) = (1,1,1,1)
        _Color3 ("Color3", Color) = (1,1,1,1)
        _SpeclarHeight ("SpeclarHeight", Float ) = 0.95
        _LineColor ("LineColor", Color) = (0.5,0.5,0.5,1)
        _DetailMask ("DetailMask", 2D) = "black" {}
        _IridescenceAlpha ("IridescenceAlpha", Float ) = 0
        _LineWidthS ("LineWidthS", Float ) = 1
        _IridescencePower ("IridescencePower", Float ) = 0
        _rimpower ("rimpower", Float ) = 0
        _rimV ("rimV", Float ) = 0
        _rimColor ("rimColor", Color) = (0.706,0.735,0.741,1)
        _IridescenceTex ("IridescenceTex", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _LineColor;
            uniform float _linewidthG;
            uniform float _LineWidthS;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*saturate((_linewidthG*(distance(_WorldSpaceCameraPos,objPos.rgb)*0.0015+0.0005)*_LineWidthS)),1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float textureA = _MainTex_var.a;
                clip(textureA - 0.5);
                return fixed4(_LineColor.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            Stencil {
                Ref 2
                Comp NotEqual
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _HairGloss; uniform float4 _HairGloss_ST;
            uniform float4 _Color;
            uniform float4 _ShadowColor;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float _SpeclarHeight;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float4 _ambientshadowG;
            uniform sampler2D _RampG; uniform float4 _RampG_ST;
            uniform float _IridescenceAlpha;
            uniform float _IridescencePower;
            uniform float _rimpower;
            uniform float _rimV;
            uniform float4 _rimColor;
            uniform sampler2D _IridescenceTex; uniform float4 _IridescenceTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float textureA = _MainTex_var.a;
                clip(textureA - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float shadowStrength = _ambientshadowG.a;
                float3 shadowColorRGB = lerp((_ShadowColor.rgb*2.0+-1.0),float3(1,1,1),shadowStrength);
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float detailMaskG = _DetailMask_var.g;
                float3 colorRGB = ((lerp( lerp( lerp( float3(1,1,1), _Color.rgb, _ColorMask_var.rgb.r ), _Color2.rgb, _ColorMask_var.rgb.g ), _Color3.rgb, _ColorMask_var.rgb.b ))*lerp(float3(1,1,1),shadowColorRGB,detailMaskG)).rgb;
                float3 textureRGB = (colorRGB*_MainTex_var.rgb);
                float2 rampUV = float2(max(0,dot(normalDirection,lightDirection)),0.0);
                float4 _RampG_var = tex2D(_RampG,TRANSFORM_TEX(rampUV, _RampG));
                float brightness = (_RampG_var.r*attenuation);
                float2 hairGlossUV = (i.uv1+float2(0.0,lerp(mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.g,0.0,_SpeclarHeight)));
                float4 _HairGloss_var = tex2D(_HairGloss,TRANSFORM_TEX(hairGlossUV, _HairGloss));
                float3 glossRGB = _HairGloss_var.rgb;
                float rimValue = saturate((pow((1.0 - max(0,dot(normalDirection,viewDirection))),(_rimpower*9.0+1.0))*5.555555+-1.777778));
                float3 rimRGB = saturate(lerp(_rimColor.rgb,float3(1,1,1),(((1.0 - (detailMaskG*(shadowStrength*-0.5+1.5)))*_rimV*rimValue)*1.0+-1.0)));
                float2 iridescenceUV = float2(dot(halfDirection,i.tangentDir),dot(halfDirection,i.bitangentDir));
                float4 _IridescenceTex_var = tex2D(_IridescenceTex,TRANSFORM_TEX(iridescenceUV, _IridescenceTex));
                float iridescenceFactor = (pow(0.5*dot(normalDirection,halfDirection)+0.5,(_IridescencePower*9.0+1.0))*brightness*_IridescenceAlpha);
                float3 iridescenceRGB = (_IridescenceTex_var.rgb*iridescenceFactor);
                float3 emissive = ((textureRGB*_LightColor0.rgb*lerp(shadowColorRGB,float3(1,1,1),brightness))+glossRGB+rimRGB+iridescenceRGB);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,textureA);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
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
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float textureA = _MainTex_var.a;
                clip(textureA - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Shader Forge/main_hair"
    CustomEditor "ShaderForgeMaterialInspector"
}
