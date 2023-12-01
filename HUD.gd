extends CanvasLayer

var health = 3
var food = 5


func _on_fish_catch():
	food -= 1


func _on_enemy_attack():
	health -= 1


func _process(delta):
	get_node("HealthImage/HealthCount").text = str(health)
	get_node("FoodImage/FoodCount").text = str(food)
	if health <= 0:
		get_tree().change_scene_to_file("res://lose.tscn")
	if food <= 0:
		get_tree().change_scene_to_file("res://win.tscn")
