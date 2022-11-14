extends Area2D

func _on_Checkpoint_body_entered(body):
	CheckpointManager.set_checkpoint(global_position)
