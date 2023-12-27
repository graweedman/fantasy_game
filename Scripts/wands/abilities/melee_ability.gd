extends Ability

class_name MeleeAbility


var collision = null
var melee_area = null

func init():
	melee_area = wand.get_node("melee_area")
	collision = melee_area.get_node("melee_collision")
	# melee_area.enabled = 	false
	# collision = melee_area.get_node("melee_collision")
	# print(collision.disabled)
	# # collision.disabled = true
	melee_area.body_entered.connect(_on_melee_area_body_entered)

func ability_cast():
	collision.disabled = false
	# melee_area.enabled = true

func deactivate():
	collision.disabled = true
	# melee_area.enabled = false

func _on_melee_area_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(ability_value)
