extends Node2D

class_name Wand

@export var resource_pool: ResourcePool = null
@export var secondary_pool: ResourcePool = null
# var sprite: Sprite2D = null
@export var player: Player = null
@export var base_damage: int = 1
@export var base_cast_speed: float = 1.0

@onready var wand_exit = $wand_exit

var primary_input = false
var primary_actuation = false
var secondary_input = false
var secondary_actuation = false
var defensive_input = false
var defensive_actuation = false
var offensive_input = false
var offensive_actuation = false

func wand_input():
	primary_input = Input.is_action_pressed("primary")
	primary_actuation = Input.is_action_just_pressed("primary")
	secondary_input = Input.is_action_pressed("secondary")
	secondary_actuation = Input.is_action_just_pressed("secondary")
	defensive_input = Input.is_action_pressed("defensive")
	defensive_actuation = Input.is_action_just_pressed("defensive")
	offensive_input = Input.is_action_pressed("offensive")
	offensive_actuation = Input.is_action_just_pressed("offensive")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(_delta):
	wand_input()
	# print("wand_input: ", primary_input, primary_actuation, secondary_input, secondary_actuation, defensive_input, defensive_actuation, offensive_input, offensive_actuation)



