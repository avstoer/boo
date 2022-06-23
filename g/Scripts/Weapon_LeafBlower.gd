extends Node2D

onready var bullets = $"Bullets"
onready var particle = $"Particles2D"

export var force:float = 80
export var active:bool = true

var power_on:bool = false

func _ready():
	for i in bullets.get_children():
		i.rotation = 0
		i.rotate((randf()*2-1)*0.2)

func _process(delta):
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("Attack")&&active: 
		power_on = true
		particle.emitting = true
	if Input.is_action_just_released("Attack"): 
		power_on = false
		particle.emitting = false

func _on_Timer_timeout():
	if power_on:
		for i in bullets.get_children():
			i.rotation = 0
			i.rotate((randf()*2-1)*0.4)
			i.fire(force)
