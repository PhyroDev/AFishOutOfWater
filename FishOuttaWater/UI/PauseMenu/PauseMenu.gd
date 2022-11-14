extends Control

func _ready():
	visible = false

func activate():
	if not get_tree().paused:
		visible = true
		
		get_tree().paused = true
	else:
		visible = false
		
		get_tree().paused = false

func _on_ContinueButton_pressed():
	activate()

func _on_MenuButton_pressed():
	pass # Replace with function body.
