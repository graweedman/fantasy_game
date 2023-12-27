extends Area2D

@export var shield_pool: ShieldPool
@onready var collision = $collision

func _ready():
	collision.disabled = true
	visible = false

func _on_body_entered(body:Node2D):
	if body.is_in_group("enemy"):
		shield_pool.take_damage(body.damage)

func _on_shield_pool_shield_depleted():
	collision.disabled = true
	visible = false

func _on_shield_pool_shield_created():
	print("shield created")
	collision.disabled = false
	visible = true
