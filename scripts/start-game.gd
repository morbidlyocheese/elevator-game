extends TouchScreenButton


# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	button.text = 'start game'
	button.draw_rect(Rect2, Blue)
	button.pressed.connect(self._button_pressed)
	add_child(button)
	
func _button_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
