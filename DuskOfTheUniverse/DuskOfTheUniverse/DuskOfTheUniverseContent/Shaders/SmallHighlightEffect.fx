float4x4 World;
float4x4 View;
float4x4 Projection;

float r;
float g;
float b;

// TODO: add effect parameters here.
sampler colourMap : register(s0);

float4 BrightenWash(float2 coords: TEXCOORD) : COLOR0
{
	float4 colour = tex2D(colourMap, coords);
	colour.rgba = (r, g, b, colour.a);
	return colour;
}

technique
{
	pass
	{
		pixelShader = compile ps_2_0 BrightenWash();
	}
}
