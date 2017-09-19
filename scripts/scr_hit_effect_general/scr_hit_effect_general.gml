//base blood info
if argument0 = "blood"
{
	for (var i = 0; i < random_range(argument2-irandom(2),argument2+irandom(2));i++)
	{
		var angle = random_range(0,360);
		if argument1 = "dark red" var colour = make_color_rgb(random_range(106,156),0,0);
		var part = instance_create_layer(random_range(x-8,x+8),random_range(y-8,y+8),"lay_entities",obj_blood)
		part.image_blend = colour;
		var spd = random_range(10,25);
		part.hspeed = spd*cos(angle);
		part.vspeed = spd*sin(angle);
		part.image_angle = random_range(0,359);
		var scale = random_range(0.75,2);
		part.image_xscale = scale;
		part.image_yscale = scale;
		part.colour = colour;
	}
}