extends Camera2D

func small_shake() -> void:
	$CameraShake.start(0.2, 30, 4, 0)

func medium_shake() -> void:
	$CameraShake.start(0.2, 45, 5, 1)

func big_shake() -> void:
	$CameraShake.start(0.3, 50, 6, 2)

func very_big_shake():
	$CameraShake.start(0.5, 70, 7, 3)
