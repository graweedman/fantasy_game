extends ResourcePool

class_name ShieldPool

signal shield_depleted
signal shield_created

func _ready():
    current_resource = 0

func take_damage(damage):
    current_resource -= damage
    if current_resource <= 0:
        break_shield()

func break_shield():
    current_resource = 0
    # print("shield broken")
    emit_signal("shield_depleted")

func create_shield(shield_strength):
    current_resource = shield_strength
    print("shield created")
    emit_signal("shield_created")
