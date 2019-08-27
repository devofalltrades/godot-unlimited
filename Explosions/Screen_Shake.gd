extends Node

const TRANS = Tween.TRANS_SINE
const EASE = Tween.EASE_IN_OUT
var RNG = RandomNumberGenerator.new()

var amplitude = 0

onready var camera = get_parent()

func start(duration=0.2, frequency=20, amplitude=20):
	self.amplitude = amplitude

	$Duration.wait_time = duration
	$Frequency.wait_time = 1 / float(frequency)

	$Frequency.start()
	$Duration.start()

func _ready():
	$Frequency.connect("timeout", self, "on_Frequency_timeout")
	$Duration.connect("timeout", self, "on_Duration_timeout")

func new_shake():
	var rand = Vector2()
	rand.x = RNG.randi_range(-amplitude, amplitude)
	rand.y = RNG.randi_range(-amplitude, amplitude)

	$Tween.interpolate_property(camera, "offset", camera.offset, rand, $Frequency.wait_time, TRANS, EASE)
	$Tween.start()

func reset():
	$Tween.interpolate_property(camera, "offset", camera.offset, Vector2(0, 0), $Frequency.wait_time, TRANS, EASE)
	$Tween.start()

func on_Frequency_timeout():
	new_shake()

func on_Duration_timeout():
	reset()
	$Frequency.stop()



