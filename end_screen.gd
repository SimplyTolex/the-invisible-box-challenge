extends Control

@export var levelToLoad: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/LevelSelectButton.grab_focus.call_deferred()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_select_button_pressed() -> void:
	get_tree().change_scene_to_packed(levelToLoad)
