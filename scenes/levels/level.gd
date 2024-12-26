class_name Level extends Node


# sets the background color of the scene
func _ready() -> void:
	RenderingServer.set_default_clear_color(Color("00003c"))
