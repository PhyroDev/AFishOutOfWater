extends RigidBody2D

class_name knockable

export var knockback_multiplyer = 1
export var lifespan = 1

func knockback(body):
	set_deferred("mode", RigidBody2D.MODE_RIGID)
	apply_central_impulse((global_position - body.global_position) * knockback_multiplyer)
	
	$Timer.wait_time = lifespan
	$Timer.start()

func _on_Timer_timeout():
	queue_free()
