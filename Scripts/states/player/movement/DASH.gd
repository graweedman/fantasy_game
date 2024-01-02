extends PlayerMovementState


@export var DASH_DURATION = 0.2
@export var DASH_COOLDOWN = 1
@export var DASH_SPEED = 1000
@export var DASH_COST = 10
@onready var dash_duration = $dash_duration
@onready var dash_cooldown = $dash_cooldown

var dashing = false
var dash_direction = Vector2.ZERO


func enter():
	player.can_dash = false
	dashing = true

	dash_duration.timeout.connect(_on_dash_duration_timeout)
	dash_cooldown.timeout.connect(_on_dash_cooldown_timeout)
	dash_duration.start(DASH_DURATION)
	dash_cooldown.start(DASH_COOLDOWN)
	if player.movement_input != Vector2.ZERO:
		dash_direction = player.movement_input.normalized()
	else:
		if player.facing_right:
			dash_direction = Vector2.RIGHT
		else:
			dash_direction = Vector2.LEFT
	player.momentum_velocity = dash_direction * DASH_SPEED

func update(_delta):
	if !dashing:
		return states.FALL
	return null


func _on_dash_duration_timeout():
	dashing = false

func _on_dash_cooldown_timeout():
	player.can_dash = true

