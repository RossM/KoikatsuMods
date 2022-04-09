#include "Lighting.cginc"
#include "Utilities.cginc"

float2 GetIridescenceUV(float IridescenceMode, float3 view, float3 perturbedNormal, float3 unperturbedNormal, float3 OSIAxis, float3 tangent, float3 bitangent)
{
    float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
    float3 halfDirection = normalize(view + lightDirection);
    float3 perturbedView = RotateVector(halfDirection, perturbedNormal, unperturbedNormal); // Change the half direction from perturbed normal space to unperturbed normal space before finding the iridescence UV coordinates.

    float2 coords;
    // Mode 2 - Texture space iridescence
    if (IridescenceMode >= 1.5)
    {
        coords = float2(dot(tangent, perturbedView), dot(bitangent, perturbedView));
    }
    // Mode 1 - Object space iridescence
    else if (IridescenceMode >= 0.5)
    {
        float3 OSIBitangent = normalize((OSIAxis.rgb - (unperturbedNormal * dot(OSIAxis.rgb, unperturbedNormal))));
        float3 OSITangent = cross(unperturbedNormal, OSIBitangent);
        coords = float2(dot(OSITangent, perturbedView), dot(OSIBitangent, perturbedView));
    }
    // Mode 0 - View space iridescence
    else
    {
        // This is equivalent to taking the view tangents, rotating them to the normal, and then taking dot products with perturbedView as above.
        coords = mul(UNITY_MATRIX_V, float4(RotateVector(halfDirection, perturbedNormal, view), 0)).xy;
    }

    return coords * 0.5 + 0.5;
}