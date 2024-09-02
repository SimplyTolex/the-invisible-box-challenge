extends Area2D

@export var levelToLoad: PackedScene
@export var requireKeyToClear := false
#@onready var key := 
var unlocked: bool
var key

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if requireKeyToClear:
		unlocked = false
		key = get_tree().get_first_node_in_group("key")
		key.flag_unlocked.connect(_on_flag_unlocked)
	else:
		unlocked = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and unlocked:
		print("You've completed a level")
		get_tree().change_scene_to_packed.call_deferred(levelToLoad)
		
		
func _on_flag_unlocked():
	print("now unlocked")
	unlocked = true
