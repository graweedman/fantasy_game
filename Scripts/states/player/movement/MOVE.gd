extends PlayerMovementState


func enter():
	player.current_speed = player.MOVE_SPEED

func update(delta):
	player.gravity(delta)
	player_movement()
	player.reset_wings()
	if player.movement_input.x == 0:
		return states.IDLE
	if player.velocity.y > 0:
		return states.FALL
	if player.jump_actuated_input:
		return states.JUMP
	return null

func exit():
	pass
