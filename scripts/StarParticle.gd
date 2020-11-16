extends Particles2D

var screen_width
var screen_height

func _ready():
	screen_width = get_viewport_rect().size.x
	screen_height = get_viewport_rect().size.y
	
	global_position.x = screen_width/2
	global_position.y = screen_height/2
