extends KinematicBody2D

var mouse_pos = get_global_mouse_position()
var velocity = Vector2()

export (int) var speed
export (int) var jump_force
export (int) var gravity

export (int) var bullet_speed

export (float) var shot_interval
var can_shoot = true

export (PackedScene) var bullet_scene
var bullet_instance

func _ready():
	$Timer.set_wait_time(shot_interval)
	$Timer.connect("timeout", self, "_on_Timer_timeout")

func _physics_process(delta):
	mouse_pos = get_global_mouse_position()
	$Gun.look_at(mouse_pos)

	if Input.is_action_pressed("shoot"):
		shoot()
	if Input.is_action_pressed("shotgun"):
		shotgun()

func shoot():
	if can_shoot:
		var random_direction
		var random_sign
		var spawn_point_pos = get_node("Gun/Spawn_Point").get_global_position()
		bullet_instance = bullet_scene.instance()
		bullet_instance.set_global_position(spawn_point_pos)

		random_direction = position.direction_to(mouse_pos)
		# print(random_direction)
        #
		# random_sign = randi()%11+1
		# if random_sign > 5:
		# 	random_sign = 1
		# else:
		# 	random_sign = -1
		# random_direction.x += rand_range(0,0.2)*random_sign
        #
		# random_sign = randi()%11+1
		# if random_sign > 5:
		# 	random_sign = 1
		# else:
		# 	random_sign = -1
		# random_direction.y += rand_range(0,0.2)*random_sign

		bullet_instance.apply_central_impulse(random_direction * (randi()%bullet_speed+bullet_speed/2))
		bullet_instance.look_at(mouse_pos)
		get_parent().add_child(bullet_instance)
		can_shoot = false

func shotgun():
	pass

func _on_Timer_timeout():
	can_shoot = true
