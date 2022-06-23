extends Node2D

onready var ray = $"RayCast2D"

export var attack_range:float = 2000

func _ready():
	ray.cast_to = Vector2(attack_range, 0)

func fire(f:float):
	ray.enabled = true
	if ray.is_colliding():
		var c:RigidBody2D = ray.get_collider()
		c.apply_central_impulse((c.global_position-global_position).normalized()*f)
