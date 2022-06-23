extends Node2D

export var force:float = 1500
export var active:bool = true

onready var shoot = $"Shoot"
onready var timer = $"Timer"

func _process(delta):
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("Attack")&&active:
		fire()

func fire():
	if timer.is_stopped():
		shoot.fire(force)
		timer.start()
