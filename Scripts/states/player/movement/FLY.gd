extends PlayerMovementState




func enter():
	pass

func update(delta):
	player_air_movement(delta)
	player.wing_stamina -= delta
	if !player.can_fly || !player.glide_input:
		if player.glide_input:
			return states.GLIDE
		return states.FALL
	player.momentum_velocity.y = lerp(player.momentum_velocity.y, player.FLY_VELOCITY, delta * 10)
	return null

func exit():
	pass
