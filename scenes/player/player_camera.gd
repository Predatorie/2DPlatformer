class_name PlayerCamera extends Camera2D

@export var tilemap: TileMapLayer

const tile_size: int = 16

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setup_camera_limits(tilemap.get_used_rect())

func setup_camera_limits(rect: Rect2i) -> void:
	limit_left = rect.position.x
	limit_right = (rect.position.x + rect.size.x) * tile_size
	limit_bottom = (rect.position.y + rect.size.y) * tile_size
	
