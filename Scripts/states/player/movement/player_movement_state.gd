extends PlayerState

class_name PlayerMovementState

func player_movement():
	if player.movement_input.x != 0:
		player.movement_velocity.x = player.movement_input.x * player.current_speed
	else:
		player.movement_velocity.x = 0

func player_air_movement(delta):
	if player.movement_input.x != 0:
		player.movement_velocity.x = lerp(player.movement_velocity.x, player.movement_input.x * player.current_speed, delta * 10)
	else:
		player.movement_velocity.x = lerp(player.movement_velocity.x, 0.0, delta)
