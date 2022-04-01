float rimValue = saturate((pow((1.0 - max(0,dot(normalDirection,viewDirection))),(rimpower*9.0+1.0))*5.0+-1.5));
float3 rimRGB = saturate((rimColor*rimV*rimValue*lerp(float3(1,1,1),shadowRGB,saturate(rimShadow))));
return rimRGB;