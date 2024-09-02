extends TileMapLayer

@export var debug := false

func _ready() -> void:
	self.show()


func _on_player_began_level() -> void:
	if not debug:
		self.hide()
	
