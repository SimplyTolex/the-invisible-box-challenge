extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$GridContainer/Button.grab_focus.call_deferred()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level2.tscn")


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level3.tscn")


func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level4.tscn")


func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level5.tscn")


func _on_button_6_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level6.tscn")


func _on_button_7_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level7.tscn")


func _on_button_8_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level8.tscn")


func _on_button_9_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level9.tscn")


func _on_button_10_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level10.tscn")
