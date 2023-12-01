extends Area2D

signal attack

func _on_body_entered(body):
	if body.name == "Snake":
		body.get_node("OuchSound").play()
		emit_signal("attack")
		self.queue_free()
