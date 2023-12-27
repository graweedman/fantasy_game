extends Node2D

@onready var wand = $wand
@onready var player = get_parent().get_parent()
var target_position = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	target_position = get_global_mouse_position()
	# print(target_position.x > player.global_position.x)
	player.facing_right = (target_position.x > player.global_position.x)
	look_at(target_position)

