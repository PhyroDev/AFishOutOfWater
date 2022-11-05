extends Area2D

func _on_HitBox_area_entered(area):
	area.get_parent().knockback(get_parent())

func _on_HitBox_body_entered(body):
	body.knockback(get_parent())

