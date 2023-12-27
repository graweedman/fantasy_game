extends ResourcePool

class_name ManaPool
@export var REGEN_RATE = 1

func _ready():
    current_resource = MAX_RESOURCE

func regen(delta):
    if current_resource < MAX_RESOURCE:
        current_resource += REGEN_RATE * delta
        if current_resource > MAX_RESOURCE:
            current_resource = MAX_RESOURCE
