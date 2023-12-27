extends Ability

class_name ProjectileAbility

@export var projectile_scene: PackedScene
@export var projectile_speed: float = 500
@export var projectile_size: float = 1

func ability_cast():
    shoot_projectile()

func shoot_projectile():
    var projectile = projectile_scene.instantiate()
    projectile.position = global_position
    projectile.scale = Vector2(projectile_size, projectile_size)
    projectile.lifetime = duration
    projectile.direction = global_position.direction_to(get_global_mouse_position())
    get_tree().get_root().add_child(projectile)
