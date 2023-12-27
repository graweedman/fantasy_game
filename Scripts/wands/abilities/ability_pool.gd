extends Node2D

class_name AbilityPool

@onready var wand = get_parent()
@onready var player = wand.player
@onready var resource_pool = wand.resource_pool

@export var primary: Ability = null
@export var secondary: Ability = null
@export var defensive: Ability = null
@export var offensive: Ability = null

func _physics_process(_delta):
	# print(defensive)
	# print("ability input: ", wand.primary_input, wand.secondary_input, wand.defensive_input, wand.offensive_input)
	if primary:
		if wand.primary_input && primary.can_cast:
			if resource_pool.use_resource(primary.cost):
				primary.activate()
	if secondary:
		if wand.secondary_input && secondary.can_cast:
			if resource_pool.use_resource(secondary.cost):
				secondary.activate()
	if defensive:

		if wand.defensive_input && defensive.can_cast:
			if resource_pool.use_resource(defensive.cost):
				defensive.activate()
	if offensive:
		if wand.offensive_input && offensive.can_cast:
			if resource_pool.use_resource(offensive.cost):
				offensive.activate()

