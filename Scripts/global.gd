extends Node

@onready var rng = RandomNumberGenerator.new()
var enJuego = true
var FinNivel = false
func Randomizar(MinNum, MaxNum):
	rng.randomize()
	return rng.randi_range(MinNum, MaxNum)

func _process(_delta: float) -> void:
	if Input.is_key_pressed(KEY_Y):
		get_tree().reload_current_scene()
		enJuego = true
