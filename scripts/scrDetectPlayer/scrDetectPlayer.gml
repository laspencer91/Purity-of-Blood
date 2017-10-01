/// @description Given a facing direction, sight distance, field of view, and a target (as an object), find if the target is in sight
/// @function scrDetectPlayer(facingDir, sightDistance, sightFieldOfView, target)

var _facingDir = argument[0];
var _sightDist = argument[1];
var _sightFov  = sin(degtorad(argument[2]));
var _target    = argument[3];
var _offsetY   = 0;

if (argument_count == 5) offsetY = argument[4];  // Optional Argument (To Adjust The Height Where The "Eyes" Are,from the origin

if (!instance_exists(_target))
	return false;

// Check a ray from the callers Y + offset >>> to the Targets Bottom and Top. So even if a glimpse of foot is seen we can return true
if (collision_line(x, y + _offsetY, _target.x, _target.bbox_top, oSightBlocker, false, true) &&
	collision_line(x, y + _offsetY, _target.x, _target.bbox_bottom, oSightBlocker, false, true))
return false;

// Convert the direction from caller to the target to a sin() value
var _targetDir = point_direction(x, y, _target.x, _target.y);
	_targetDir = abs(sin(degtorad(_targetDir)));	

var _targetDist = distance_to_object(_target);

if ((_targetDir < _sightFov) && (sign(_target.x - x) == _facingDir) && (_targetDist <= _sightDist))
{
	return true;
}

return false;

