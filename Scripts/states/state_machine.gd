class_name StateMachine extends Node

var previous_state = null
var current_state = null

var STATES = null

func _ready():
	pass

func init(initial_state):
	current_state = initial_state
	previous_state = initial_state


func change_state(state):
	if state != null:
		current_state.exit()
		previous_state = current_state
	current_state = STATES[state]
	current_state.enter()



