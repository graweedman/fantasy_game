extends PlayerMovementState


func enter():
	player.velocity.y = 0
	player.momentum_velocity.y += player.JUMP_VELOCITY

func update(delta):

	print(player.velocity)
	if player.is_on_floor():
		return states.IDLE
	if player.glide_input && player.can_fly:
		return states.FLY
	if player.velocity.y > 0:
		return states.FALL
	player.gravity(delta)

	return null

