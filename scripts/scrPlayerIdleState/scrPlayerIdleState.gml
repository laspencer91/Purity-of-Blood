
// If there is horizontal input from the player we transition into running
if (InputManager.horizontalInput != 0)
{
	actionState = Action.running;
}

// At this point we are idle horizontally and vertically, so use idle sprite
if (vertState == VertState.grounded)
	scrPlayerSetSprite(sPlayerBodyIdle, 0, 0);