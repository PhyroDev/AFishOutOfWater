extends Node

var last_checkpoint : Vector2

func set_checkpoint(point):
	if point != last_checkpoint:
		last_checkpoint = point
