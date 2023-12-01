extends Area2D

signal catch

func _on_body_entered(body):
	if body.name == "Snake":
		body.get_node("CatchSound").play()
		emit_signal("catch")
		self.queue_free()
