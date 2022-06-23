extends Node2D

onready var anim = $"AnimationPlayer"

export var force:float = 1500
export var active:bool = true

var firing:bool = false

func _process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("Attack")&&active:
		anim.play("fire")


func _on_Area2D_body_entered(body):
	if !firing: return
	body.apply_central_impulse( (get_global_mouse_position()-global_position).normalized()*force )
