extends Camera2D

func _input(event):
	if event.is_action_pressed("MSU"):
		if zoom.x > 1:
			zoom -= Vector2(0.1, 0.1) 
	
	if event.is_action_pressed("MSD"):
		if zoom.x < 4:
			zoom += Vector2(0.1, 0.1)

func small_shake() -> void:
	$CameraShake.start(0.2, 30, 4, 0)

func medium_shake() -> void:
	$CameraShake.start(0.2, 45, 5, 1)

func big_shake() -> void:
	$CameraShake.start(0.3, 50, 6, 2)

func very_big_shake():
	$CameraShake.start(0.5, 70, 7, 3)
