extends Projectile

func update_projectile(delta):
	damage += damage * delta * 2
	scale += scale * delta * 2
