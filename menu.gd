extends Control


func _on_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")


func _on_button_mouse_entered():
	get_node("HoverSound").play()


func _on_button_button_down():
	get_node("SelectSound").play()
