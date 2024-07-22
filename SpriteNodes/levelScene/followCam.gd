extends Camera2D

@export var tilemap: TileMap
# Called when the node enters the scene tree for the first time.
func _ready():
	var map_rect = tilemap.get_used_rect()
	var tile_size = tilemap.cell_quadrant_size
	var pixel_world_size = map_rect.size * tile_size
	limit_right = pixel_world_size.x
	limit_bottom = pixel_world_size.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
