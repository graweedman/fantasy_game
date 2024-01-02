extends PlayerMovementState


func enter():
	pass

func update(delta):
	# if abs(player.momentum_velocity.x) > player.MOVE_SPEED:
	# 	player.momentum_velocity.x = lerp(player.momentum_velocity.x, player.MOVE_SPEED, delta * 10)
	player.gravity(delta)
	player.air_drag(delta)
	if player.dash_actuated_input && player.can_dash:
		return states.DASH
	if player.is_on_floor():
		return states.IDLE
	if player.glide_input && player.can_fly:
		return states.FLY
	if player.glide_input:
		return states.GLIDE
	return null

func exit():
	pass
	# player.momentum_velocity.x = 0.0
