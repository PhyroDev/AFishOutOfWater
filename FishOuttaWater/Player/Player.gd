extends KinematicBody2D

export var default_speed = 10000
var speed = default_speed

var velocity = Vector2()

var can_dash = true
var dashing = false

func _input(event):
	if event.is_action_pressed("LMB") and can_dash:
		dash()
		
		$Camera2D.small_shake()

func _physics_process(delta):
	if position.distance_to(get_global_mouse_position()) > 6:
		if not dashing:
			look_at(get_global_mouse_position())
	else:
		return
	
	velocity = Vector2(1, 0).rotated(rotation)
	
	velocity = move_and_slide(velocity * speed * delta)

func dash():
	speed = default_speed * 25
	dashing = true
	can_dash = false
	$HitBox.monitoring = true
	
	yield(get_tree().create_timer(0.05), "timeout")
	
	speed = default_speed
	dashing = false
	$HitBox.monitoring = false
	
	$DashCooldown.start()

func _on_DashCooldown_timeout():
	can_dash = true
