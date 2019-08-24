extends KinematicBody2D

export (int) var speed
export (int) var run_multiplier

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

	if Input.is_action_pressed("run"):
		velocity *= run_multiplier

	position += velocity * delta
