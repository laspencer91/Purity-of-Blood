varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float alpha;

void main()
{
    //pull original color from the image
    vec4 OriginalColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    //pull the individual color and alpha levels from the current pixel from the image
    float Red = OriginalColor.r;
    float Green = OriginalColor.g;
    float Blue = OriginalColor.b;
    float Alpha = OriginalColor.a;
    
    //if the pixel in the image is clear, don't draw it. If so, make it white
    if (Alpha == 0.0)
    {        
        gl_FragColor = vec4(Red, Green, Blue, 0.0);
    }
    else
    {        
        gl_FragColor = vec4(1.0, 1.0, 1.0, alpha);
    }
}