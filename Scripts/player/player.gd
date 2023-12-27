extends CharacterBody2D

class_name Player

@onready var flip_point = $flip_point
@onready var STATES = $player_states

@export var MOVE_SPEED = 300.0
@export var FLY_VELOCITY = -300.0
@export var MAX_WING_STAMINA = 100
@export var GLIDE_SPEED = 100.0
@export var FLY_SPEED = 1.2
@export var JUMP_VELOCITY = -800.0
@export var LERP_SPEED = 0.1
var current_speed
var wing_stamina = 100

var current_state: PlayerState = null
var previous_state: PlayerState = null

var momentum_velocity = Vector2.ZERO
var movement_velocity = Vector2.ZERO


var facing_right = true

var movement_input = Vector2.ZERO
var glide_input = false
var jump_actuated_input = false
var dash_actuated_input = false

var can_dash = true
var can_fly = true

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity_value = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	current_speed = MOVE_SPEED
	for state in STATES.get_children():
		state.states = STATES
		state.player = self
	previous_state = STATES.IDLE
	current_state = STATES.IDLE

func _physics_process(delta):
	# Add the gravity.
	if wing_stamina <= 0:
		can_fly = false
		wing_stamina = 0

	_player_input()
	# Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	change_state(current_state.update(delta))
	_player_facing()

	velocity = momentum_velocity + movement_velocity
	move_and_slide()

func gravity(delta):
	if not is_on_floor():
		momentum_velocity.y += gravity_value * delta
	if is_on_floor():
		momentum_velocity.y = 0

func _player_facing():
	if facing_right:
		flip_point.scale.x = 1
	else:
		flip_point.scale.x = -1

func _player_input():
	movement_input = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	jump_actuated_input = Input.is_action_just_pressed("jump")
	glide_input = Input.is_action_pressed("glide")
	dash_actuated_input = Input.is_action_just_pressed("dash")

func change_state(input_state):
	if input_state != null:
		previous_state = current_state
		current_state = input_state

		previous_state.exit()
		current_state.enter()

func reset_wings():
	can_fly = true
	wing_stamina = MAX_WING_STAMINA

func _on_health_pool_death():
	pass # Replace with function body.


func take_damage(damage):
	pass # Replace with function body.
