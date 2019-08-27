extends KinematicBody2D

func move(pos, magnitude):
	move_and_slide(position.direction_to(pos) * magnitude)

func follow(person, magnitude):
	move_and_slide(position.direction_to(person.position) * magnitude)
