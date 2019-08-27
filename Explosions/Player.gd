extends KinematicBody2D

export (int) var gravity = 98
export (int) var speed = 400
export (int) var jump_force = 800
export (PackedScene) var debris_scene

var rng = RandomNumberGenerator.new()
var velocity = Vector2()
var on_ground = false
var extents

func _ready():
	extents = $CollisionShape2D.shape.extents

func _physics_process(delta):
	move_and_slide(velocity, Vector2(0,-1))
	on_ground = is_on_floor()
	velocity.x = 0

	if not on_ground:
		velocity.y += gravity
	else:
		if velocity.y > gravity:
			get_parent().get_node("Camera2D/Screen_Shake").start()
			rng.randomize()
			for i in range(rng.randi_range(5,10)):
				single_debris(Vector2(position.x + rng.randi_range(-extents.x, extents.x)*2, position.y + extents.y*3), velocity.y/150)
		velocity.y = 0

	if Input.is_action_pressed("blob"):
		position = get_global_mouse_position()
		velocity.y = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed

	if Input.is_action_pressed("ui_up") and on_ground:
		velocity.y -= jump_force

func single_debris(pos, debris_speed):
	rng.randomize()
	var debris = debris_scene.instance()
	debris.set_global_position(pos)
	debris.set_angular_velocity(rng.randi_range(-debris_speed, debris_speed))
	debris.apply_central_impulse(Vector2(rng.randi_range(-100,100), rng.randi_range(-100, -50)) * debris_speed)
	debris.set_z_index(z_index+1)
	get_parent().add_child(debris)

# func multiple_debris(pos, amount, debris_speed):
# 	var debris = []
# 	for i in range(amount):
# 		rng.randomize()
# 		debris.append(debris_scene.instance())
# 		debris[-1].set_global_position(pos)
# 		debris[-1].set_angular_velocity(rng.randi_range(-debris_speed, debris_speed))
# 		debris[-1].apply_central_impulse(Vector2(rng.randi_range(-100,100), rng.randi_range(-100, -50)) * debris_speed)
# 		get_parent().add_child(debris[-1])
