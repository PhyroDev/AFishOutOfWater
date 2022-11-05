extends KinematicBody2D

class_name Crashable

var dead = false

func knockback(body):
	dead = true
	
	var dir = global_position - body.global_position
	
	dir = move_and_slide(dir * 100)
	
	yield(get_tree().create_timer(1.0), "timeout")
	
	queue_free()

