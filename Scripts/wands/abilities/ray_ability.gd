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
	_ray_point()


func ability_update(_delta):
	_ray_point()

func deactivate():
	# set_process(false)
	ray_line.visible = false

func _ray_point():
	if wand_range.is_colliding():
		target_position = wand_range.get_collision_point()
		if wand_range.get_collider().is_in_group("enemies"):
			wand_range.get_collider().take_damage(ability_value)
	else:
		target_position = wand_range.target_position

	ray_line.points[1] = Vector2(0, -target_position.distance_to(global_position))
