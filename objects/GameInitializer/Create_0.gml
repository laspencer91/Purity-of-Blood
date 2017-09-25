event_inherited();  // Singleton

if (!layer_exists("Controllers"))
	layer_create(0, "Controllers");

// Any Persistant Controllers that we need in every room can be placed here
controllers[0] = InputManager;
controllers[1] = RoomManager;
controllers[2] = DataCache;

// Initiailize all of the controllers. Let us know if they are not setup
// correctly to be persistant through the rooms.
for (var i = 0; i < array_length_1d(controllers); i++)
{
	if (!instance_exists(controllers[i]))
	{
		obj = instance_create_layer(-1, -1, "Controllers", controllers[i]);	// Instance to create
		if (!variable_instance_exists(obj, "singleton"))
		{
			scrErrorWarning("Singleton not initialized for " + object_get_name(obj) +
							", need to make sure we use event_inherited() in the create event.");
		}
	}
}
room_goto_next();
instance_destroy();
