function UpdatePassiveStates(){
	collisionRubber = collision_rectangle(x - (x - bbox_left), y + 1, x + (bbox_right - x), y + vspeed + 1, objRubberFloor, false, true);
    collisionFloor = collision_rectangle(x - (x - bbox_left), y + 1, x + (bbox_right - x), y + vspeed + 1, objFloorParent, false, true);
	onRubber = collisionRubber != noone;
	onFloor = collisionFloor != noone;
	inAir = !onRubber && !onFloor;
	falling = vspeed > 0;
	landingOnFloor = falling & onFloor;
	landingOnRubber = falling & onFloor;
}