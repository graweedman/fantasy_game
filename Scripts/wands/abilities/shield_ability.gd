extends Ability

class_name ShieldAbility

var shield_pool: ResourcePool

func init():
	shield_pool = wand.secondary_pool

func ability_cast():
	print("shield_created")
	shield_pool.create_shield(ability_value)

func deactivate():
	shield_pool.break_shield()

