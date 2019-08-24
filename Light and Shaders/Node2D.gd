extends Node2D

export (int) var speed
var velocity

func _process(delta):
	velocity = Vector2()

	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -speed
	if Input.is_action_just_pressed("ui_down"):
		velocity.y = speed

	if Input.is_action_just_pressed("ui_left"):
		velocity.x = -speed
	if Input.is_action_just_pressed("ui_right"):
		velocity.x = speed

	position += velocity * delta
