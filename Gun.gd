extends Position2D

export (PackedScene) var Bullet

func shoot():
	if Input.is_action_pressed("shoot"):
		var b = Bullet.instance()
		owner.add_child(b)
		b.transform = global_transform

func _physics_process(delta):	
	shoot()
