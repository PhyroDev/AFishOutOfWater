extends Control

func _ready():
	visible = false

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		activate()

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
