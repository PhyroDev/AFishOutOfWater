extends KinematicBody2D

class_name Crashable

var dead = false
var velocity = Vector2.ZERO

func knockback(body):
	dead = true
	
	var dir = global_position - body.global_position
	
	dir = move_and_slide(dir * 100)

