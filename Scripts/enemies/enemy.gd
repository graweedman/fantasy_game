class_name Enemy extends RigidBody2D

@onready var damage_label = $damage
@onready var health_pool = $health_pool
@onready var is_ground = $raycasts/is_ground
@onready var STATES = $enemy_states
@onready var player_seek = $triggers/player_seek_range

@export var speed = 100.0
@export var damage = 10

var player = null
var see_player = false

func _ready():
	health_pool.death.connect(_death)
	player_seek.area_entered.connect(_on_player_seek_range_body_entered)
	player_seek.area_exited.connect(_on_player_seek_range_body_exited)
	for state in STATES.get_children():
		state.states = STATES
		state.enemy = self

func take_damage(damage):
	damage_label.text = str(damage)
	health_pool.take_damage(damage)

func gravity():
	if is_on_ground():
		gravity_scale = 0
	if !is_on_ground():
		gravity_scale = 1

func is_on_ground():
	return is_ground.is_colliding()

func take_damage_per_second(damage, delta):
	damage_label.text = str(damage)
	health_pool.take_damage_per_second(damage, delta)

func _physics_process(delta):
	gravity()
	# move(Vector2(1, 0))

func push(direction):
	apply_central_impulse(direction)

func move(direction):
	linear_velocity.x = direction.x * speed

func _death():
	queue_free()

func _on_player_seek_range_body_entered(body):
	if body.name == "player":
		player = body
		print(body.name)
		see_player = true

func change_state(input_state):
	if input_state != null:


func _on_player_seek_range_body_exited(body):
	if body.name == "player":
		player = null
		print(body.name)
		see_player = false
