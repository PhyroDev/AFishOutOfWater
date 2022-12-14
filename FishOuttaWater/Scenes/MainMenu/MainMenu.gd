extends Control

func _input(event):
	if event.is_action_pressed("T"):
		get_tree().change_scene("res://Scenes/TestWorld/TestWorld.tscn")

func _on_PlayButton_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level1 - Beach/BeachLevel.tscn")

func _on_CreditsButton_pressed():
	$AnimationPlayer.play("M-C")

func _on_ExitButton_pressed():
	get_tree().quit()


func _on_BackButton_pressed():
	$AnimationPlayer.play("C-M")
