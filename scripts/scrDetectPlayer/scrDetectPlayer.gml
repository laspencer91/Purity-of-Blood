/// @description Given a facing direction, sight distance, field of view, and a target (as an object), find if the target is in sight
/// @function scrDetectPlayer(facingDir, sightDistance, sightFieldOfView, target)

var _facingDir = argument[0];
var _sightDist = argument[1];
var _sightFov  = sin(degtorad(argument[2]));
var _target    = argument[3];

if (!instance_exists(_target))
	return false;

if (collision_line(x, bbox_top, _target.x, _target.y, oSightBlocker, false, true) &&
	collision_line(x, bbox_bottom, _target.x, _target.y, oSightBlocker, false, true))
return false;

var _targetDir = point_direction(x, y, _target.x, _target.y);
	_targetDir = abs(sin(degtorad(_targetDir)));	

var _targetDist = distance_to_object(_target);

if ((_targetDir < _sightFov) && (sign(_target.x - x) == _facingDir) && (_targetDist <= _sightDist))
{
	return true;
}

return false;

