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

func inflict(ef):
	var n = ef["PackedScene"].instance()
	assert(n is Effect, "inflicted none Effect")
	n._setup(ef["Config"])
	n.applyee = self
	add_child(n)
	print(n.name + " is inflicted onto " + name)

func hurt(dmg:float, effects:Array=[]):
	on_hit(dmg)
	for i in effects:
		inflict(i)
	if hp<=0:
		death()

func move(delta:float):
	print("move() not implemented")

func _physics_process(delta):
	move(delta)
