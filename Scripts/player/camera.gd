extends Camera2D

@onready var player = get_parent()

const DEADZONE = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseMotion:
		var _target = event.position - get_viewport().size * 0.5
		if _target.length() < DEADZONE:
			position = Vector2.ZERO
		else:
			position = _target.normalized() * (_target.length() - DEADZONE) * 0.5
