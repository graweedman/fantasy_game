extends PlayerMovementState


func enter():
	pass

func update(delta):
	player_air_movement(delta)
	if player.dash_actuated_input && player.can_dash:
		return states.DASH
	if player.is_on_floor():
		return states.IDLE
	if !player.glide_input:
		return states.FALL
	if player.glide_input && player.can_fly:
		return states.FLY
	player.momentum_velocity.y = lerp(player.momentum_velocity.y, player.GLIDE_SPEED, delta * 10)
	return null

func exit():
	pass
