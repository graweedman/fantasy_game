extends ResourcePool

class_name HealthPool

@export var REGEN_RATE = 1
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
    if current_resource <= 0:
        current_resource = 0
        is_alive = false
        emit_signal("death")

