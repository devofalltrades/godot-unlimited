extends KinematicBody2D

export (int) var speed
var velocity
var already_running = false

func _ready():
	get_parent().get_node("runner").connect("body_entered", self, "_on_runner_enter")

func _process(delta):
	velocity = Vector2()

	if Input.is_action_pressed("ui_up"):
		velocity.y -= speed
	elif Input.is_action_pressed("ui_down"):
		velocity.y += speed

	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed

	move_and_slide(velocity)
	# position.x = clamp(position.x, 0, 600)
	# position.y = clamp(position.y, 0, 600)

func _on_runner_enter(body):
	if not already_running:
		speed *= 3
		already_running = true
