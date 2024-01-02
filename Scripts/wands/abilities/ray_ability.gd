extends Ability

class_name RayAbility

var target_position: Vector2

var ray: Node2D = null
var wand_range: RayCast2D = null
var ray_line: Line2D = null

func init():
	ray = wand.get_node("ray")
	wand_range = ray.get_node("wand_range")
	ray_line = ray.get_node("ray_line")
	ray_line.visible = false
	# set_process(false)

func ability_cast():
	# set_process(true)
	ray_line.visible = true
	_ray_point(1)


func ability_update(_delta):
	_ray_point(_delta)

func deactivate():
	# set_process(false)
	ray_line.visible = false

func _ray_point(delta):
	if wand_range.is_colliding():

		var target = wand_range.get_collider()

		target_position = wand_range.get_collision_point()
		if target:
			if target.has_method("take_damage_per_second"):
				target.take_damage_per_second(ability_value, delta)
	else:
		target_position = wand_range.target_position

	ray_line.points[1] = Vector2(0, -target_position.distance_to(global_position))
