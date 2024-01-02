extends ResourcePool

class_name HealthPool

@export var REGEN_RATE = 1
var second_threshold = 0.0
var is_alive = true

signal death

func _ready():
    current_resource = MAX_RESOURCE

func regen(delta):
    if current_resource < MAX_RESOURCE:
        current_resource += REGEN_RATE * delta
        if current_resource > MAX_RESOURCE:
            current_resource = MAX_RESOURCE

func take_damage(damage):
    current_resource -= damage
    print("HealthPool: " + str(current_resource))
    if current_resource <= 0:
        current_resource = 0
        is_alive = false
        emit_signal("death")

func take_damage_per_second(damage, delta):
    second_threshold += delta
    if second_threshold >= 1.0:
        take_damage(damage)
        second_threshold = 0.0
