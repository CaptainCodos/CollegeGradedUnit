float4x4 World;
float4x4 View;
float4x4 Projection;

// TODO: add effect parameters here.

sampler colourMap;

float4 LaserWash(float2 coords: TEXCOORD) : COLOR
{
	float4 colour = tex2D(colourMap, coords);
	colour.rgba = (0, 0, 1, 1);
	return colour;
}

technique
{
	pass
	{
		pixelShader = compile ps_2_0 LaserWash();
	}
}
