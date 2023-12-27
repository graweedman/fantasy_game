extends Area2D

class_name Projectile

@export var speed = 400
@export var lifetime = 1
@export var damage = 1
@onready var lifetime_timer = $lifetime

var direction = Vector2.ZERO

func _ready():
	self.body_entered.connect(_on_body_entered)
	lifetime_timer.timeout.connect(_on_lifetime_timeout)
	lifetime_timer.start(lifetime)

func _physics_process(delta):
	update_projectile(delta)
	position += direction * speed * delta

func update_projectile(_delta):
	pass

func _on_lifetime_timeout():
	queue_free()

func _on_body_entered(body):
	if body.is_in_group("enemies"):
		body.take_damage(damage)
	queue_free()
