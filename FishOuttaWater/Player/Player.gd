extends KinematicBody2D

export var default_speed = 2000
var speed = default_speed

var velocity = Vector2()

onready var dash_bar = $Camera2D/Control/ProgressBar
var dash_power 
var can_dash = true
var dashing = false

func _input(event):
	if event.is_action_pressed("LMB") and can_dash:
		dash()

func _physics_process(delta):
	if position.distance_to(get_global_mouse_position()) > 6:
		if not dashing:
			$Fish.look_at(get_global_mouse_position())
			$CollisionShape2D.look_at(get_global_mouse_position())
			dash_bar.value += 0.75
			$AnimationPlayer.play("Flop")
	else:
		return
	
	velocity = Vector2(1, 0).rotated($Fish.rotation)
	
	velocity = move_and_slide(velocity * speed * delta)

func dash():
	speed = default_speed * dash_bar.value / 3
	dash_power = dash_bar.value / 4
	dash_bar.value = 0
	
	dashing = true
	can_dash = false
	$Fish/HitBox.monitoring = true
	
	yield(get_tree().create_timer(0.05), "timeout")
	
	speed = default_speed
	dashing = false
	$Fish/HitBox.monitoring = false
	
	$DashCooldown.start()

func _on_DashCooldown_timeout():
	can_dash = true

func die():
	global_position = CheckpointManager.last_checkpoint
