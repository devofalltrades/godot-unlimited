extends Node2D

export (int) var speed

export (PackedScene) var person_scene
var people = []

func _physics_process(delta):
	if Input.is_action_just_pressed("add"):
		people.append(person_scene.instance())
		people[-1].set_global_position(get_local_mouse_position())
		add_child(people[-1])
	
	if Input.is_action_pressed("move"):
		for p in people:
			p.move(get_local_mouse_position(), speed)
