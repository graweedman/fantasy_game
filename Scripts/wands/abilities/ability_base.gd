extends Node2D

class_name Ability

enum AbilityType {
	BASIC,
	PASSIVE,
	ACTIVE,
	TOGGLE
}

enum AbilityTarget {
	SELF,
	ENEMY
}

@onready var cooldown_timer: Timer = $cooldown_timer
@onready var duration_timer: Timer = $duration_timer
@onready var wand = get_parent().get_parent()
@onready var tree = get_tree().get_root()

@export var title = "Ability"
@export var description = "This is an ability"
@export var hud_icon: Texture = null
@export var ability_value: int = 0
@export var cooldown: float = 0.0
@export var cost: int = 0
# @export var type: AbilityType = AbilityType.ACTIVE
# @export var target: AbilityTarget = AbilityTarget.ENEMY
@export var modifier: float = 1.0
@export var duration: float = 0.0

var casting = false
var active = false
var can_cast = true

func _ready():
	cooldown_timer.timeout.connect(_cooldown_finished)
	duration_timer.timeout.connect(_duration_finished)
	init()
	# set_process(false)

func init():
	pass

func activate():
	if can_cast:
		print("Activating " + title)
		print("duration: " + str(duration) + " is zero approx: " + str(is_zero_approx(duration)))
		print("cooldown: " + str(cooldown) + " is zero approx: " + str(is_zero_approx(cooldown)))
		ability_cast()
		var has_cooldown = !is_zero_approx(cooldown)
		var has_duration = !is_zero_approx(duration)

		if has_duration:
			casting = true
			can_cast = false
			duration_timer.start(duration)

		if has_cooldown and !has_duration:
			can_cast = false
			cooldown_timer.start(cooldown)

func _physics_process(delta):
	if casting:
		ability_update(delta)
	if !casting and !can_cast:
		deactivate()

func ability_cast():
	pass

func deactivate():
	pass

func ability_update(delta):
	pass

func _cooldown_finished():
	print("Cooldown finished")
	can_cast = true

func _duration_finished():
	print("Duration finished")
	casting = false
	cooldown_timer.start(cooldown)


