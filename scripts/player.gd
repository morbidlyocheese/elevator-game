extends CharacterBody2D

@export var speed: int = 200

func input():
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	var mov_dir = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	velocity = mov_dir * speed
	
func _physics_process(delta):
	input()
	move_and_slide()
