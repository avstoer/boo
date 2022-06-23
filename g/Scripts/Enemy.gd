extends KinematicBody2D
class_name Enemy

export var MAX_HP = 0

var hp = 0

func _ready():
	hp = MAX_HP

func on_hit(dmg:float):
	print("on_hit() not implemented")

func death():
	print("death() not implemented")

func hurt(dmg:float):
	on_hit(dmg)
	if hp<=0:
		death()

func move(delta:float):
	print("move() not implemented")

func _physics_process(delta):
	move(delta)
