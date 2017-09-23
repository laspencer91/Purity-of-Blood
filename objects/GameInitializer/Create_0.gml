event_inherited();  // Singleton

if (!layer_exists("Controllers"))
	layer_create(0, "Controllers");

controllers[0] = InputManager;
controllers[1] = RoomManager;
controllers[2] = DataCache;

for (var i = 0; i < array_length_1d(controllers); i++)
{
	if (!instance_exists(controllers[i]))
		instance_create_layer(-1, -1, "Controllers", controllers[i]);
}

instance_destroy();