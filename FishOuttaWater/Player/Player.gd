extends KinematicBody2D

export var speed = 10000

var velocity = Vector2()

func _physics_process(delta):
	if position.distance_to(get_global_mouse_position()) > 10:
		look_at(get_global_mouse_position())
	else:
		return
	
	velocity = Vector2(1, 0).rotated(rotation)
	
	velocity = move_and_slide(velocity * speed * delta)
