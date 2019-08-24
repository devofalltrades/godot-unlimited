extends Node2D

export (int) var speed
var velocity

func _process(delta):
	velocity = Vector2()
	if Input.is_action_pressed("ui_up"):
		velocity.y = -speed
	elif Input.is_action_pressed("ui_down"):
		velocity.y = speed

	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed

	print(position, " ", velocity)
	position += velocity * delta
