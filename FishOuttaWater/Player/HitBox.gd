extends Area2D

func _on_HitBox_area_entered(area):
	hit(area)

func _on_HitBox_body_entered(body):
	hit(body)

func hit(body):
	#print("Hit!")
	
	body.knockback(get_parent())
