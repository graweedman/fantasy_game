extends Ability

class_name ResourceAbility

var resource_pool = wand.resource_pool

func refill(amount):
    resource_pool.add_resource(amount)






