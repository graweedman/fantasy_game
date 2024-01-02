extends PlayerMovementState


# Called when the node enters the scene tree for the first time.
func enter():
	pass

func update(delta):
	player.gravity(delta)
	player_movement()
	player.reset_wings()
	if player.dash_actuated_input && player.can_dash:
		return states.DASH
	if player.movement_input.x != 0:
		return states.MOVE
	if player.velocity.y > 0:
		return states.FALL
	if player.jump_actuated_input:
		return states.JUMP
	return null

func exit():
	pass
