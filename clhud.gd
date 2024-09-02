extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show()
	$NoticeBegin.show()
	$NoticeRestart.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_began_level() -> void:
	$NoticeBegin.hide()


func _on_player_died() -> void:
	$NoticeRestart.show()
