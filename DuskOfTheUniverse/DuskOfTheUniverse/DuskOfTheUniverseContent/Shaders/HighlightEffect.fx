float4x4 World;
float4x4 View;
float4x4 Projection;

// TODO: add effect parameters here.
sampler colourMap;

float4 BrightenWash(float2 coords: TEXCOORD) : COLOR
{
	float4 colour = tex2D(colourMap, coords);

	colour.r = colour.r * 2;
	colour.g = colour.g * 2;
	colour.b = colour.b * 2;

	return colour;
}

technique
{
	pass
	{
		pixelShader = compile ps_2_0 BrightenWash();
	}
}
