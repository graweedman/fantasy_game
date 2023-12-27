extends PlayerMovementState


func enter():
	pass

func update(delta):
	player.gravity(delta)
	if player.is_on_floor():
		return states.IDLE
	if player.glide_input && player.can_fly:
		return states.FLY
	if player.glide_input:
		return states.GLIDE
	return null

func exit():
	pass
