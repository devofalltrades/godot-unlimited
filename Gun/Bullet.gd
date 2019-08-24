extends RigidBody2D

export (PackedScene) var liner_scene
var liner_instance
export (int) var liner_limit

func _ready():
	liner_instance = liner_scene.instance()
	get_tree().get_root().add_child(liner_instance)
	liner_instance.position = liner_instance.get_global_position()
	$Timer.connect("timeout", self, "_on_Bullet_timeout")

func _physics_process(delta):
	liner_instance.add_point(position)
	while liner_instance.get_point_count() > liner_limit:
		liner_instance.remove_point(0)

func _on_Bullet_timeout():
	liner_instance.queue_free()
	queue_free()
