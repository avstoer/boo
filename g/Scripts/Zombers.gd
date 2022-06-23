extends Enemy

func on_hit(dmg:float):
	hp -= dmg
	print(name + "'s hp is at " + str(hp))

func move(delta):
	move_and_slide(Vector2(-30, 0))

func death():
	queue_free()
