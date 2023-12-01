extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("WinSound").play()
	await get_tree().create_timer(1.0).timeout
	get_node("WinVoice").play()


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_button_mouse_entered():
	get_node("HoverSound").play()


func _on_button_button_down():
	get_node("SelectSound").play()
