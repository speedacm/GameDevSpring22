extends Area2D

export var speed = 750


func _physics_process(delta):
	position += transform.x * speed * delta


func _on_Bullet_body_entered(body):
	if body.is_in_group("enemy"):
		body.hp -= 10
	queue_free()

