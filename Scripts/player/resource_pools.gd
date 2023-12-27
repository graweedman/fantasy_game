extends Node

@onready var mana_pool: ManaPool = $mana_pool
@onready var health_pool: HealthPool = $health_pool
@onready var lifeforce_pool: LifeforcePool = $lifeforce_pool
@onready var shield_pool: ShieldPool = $shield_pool

@export var REGEN_RATE_PERCENTAGE = 100
@export var REGEN_RATE_FLAT = 0
@export var RESOURCE_COST_REDUCTION_PERCENTAGE = 0
@export var RESOURCE_COST_REDUCTION_FLAT = 0

var current_regen_rate_percentage
var current_regen_rate_flat
var current_resource_cost_reduction_percentage
var current_resource_cost_reduction_flat


# Called when the node enters the scene tree for the first time.
func _ready():
	current_regen_rate_percentage = REGEN_RATE_PERCENTAGE
	current_regen_rate_flat = REGEN_RATE_FLAT
	current_resource_cost_reduction_percentage = RESOURCE_COST_REDUCTION_PERCENTAGE
	current_resource_cost_reduction_flat = RESOURCE_COST_REDUCTION_FLAT

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
