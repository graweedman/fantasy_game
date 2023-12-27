extends Node

class_name ResourcePool

@export var MAX_RESOURCE: int = 100
var resource_name: String

var current_resource: int = 0

func _ready():
    pass

func increase_max_resource(amount: int):
    MAX_RESOURCE += amount

func decrease_max_resource(amount: int):
    MAX_RESOURCE -= amount

func add_resource(amount: int):
    current_resource += amount
    if current_resource > MAX_RESOURCE:
        current_resource = MAX_RESOURCE

func use_resource(amount: int):
    if is_enough_resource(amount):
        current_resource -= amount
        return true
    else:
        return false

func is_enough_resource(amount: int):
    return current_resource >= amount



