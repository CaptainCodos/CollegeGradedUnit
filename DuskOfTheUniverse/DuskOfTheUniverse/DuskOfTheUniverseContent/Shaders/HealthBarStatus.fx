float4x4 World;
float4x4 View;
float4x4 Projection;

float r1;
float g1;
float b1;
float a1;

float r2;
float g2;
float b2;
float a2;

float ratio;

// TODO: add effect parameters here.
sampler colourMap : register(s0);

float4 HealthWash(float2 coords: TEXCOORD) : COLOR0
{
	float4 colour = tex2D(colourMap, coords);

	if (coords.x > ratio)
	{
		colour.r = r2;
		colour.g = g2;
		colour.b = b2;
		colour.a = a2;
	}
	else
	{
		colour.r = r1;
		colour.g = g1;
		colour.b = b1;
		colour.a = a1;
	}
	
	return colour;
}

technique
{
	pass
	{
		pixelShader = compile ps_2_0 HealthWash();
	}
}
