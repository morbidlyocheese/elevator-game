extends CharacterBody2D

@export var speed: int = 100

func input():
	var mov_dir = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	velocity = mov_dir * speed
	
func _physics_process(delta):
	input()
	move_and_slide()
