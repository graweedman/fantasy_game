extends Wand

@export var projectile_scene: PackedScene = null
@export var ray_length: float = 1000
@export var ray_color: Color = Color(1.0, 1.0, 0.0)
@onready var melee_area: Area2D = $melee_area
@onready var ray: Line2D = $ray/ray_line
@onready var wand_range: RayCast2D = $ray/wand_range


func _ready():
	ray.default_color = ray_color
	wand_range.target_position = Vector2(0, -ray_length)


