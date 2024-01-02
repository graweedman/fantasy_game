extends Area2D


@export var PUSH_FORCE = 1200
@onready var collision = $push_collision
@onready var player = get_parent().get_parent()
var direction = Vector2.ZERO




# Called when the node enters the scene tree for the first time.
func _ready():
	body_entered.connect(_on_body_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.has_method("push"):
		player.momentum_velocity.x = 0
		direction = Vector2(body.global_position.x - global_position.x, 0).normalized()
		print("push " + str(direction))
		body.push(direction * PUSH_FORCE)
