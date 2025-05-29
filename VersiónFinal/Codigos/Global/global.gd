extends Node

@onready var rng = RandomNumberGenerator.new()
var NivelesCompletados = 0
var Nivel : int
var provincia = 0
var vivo = false
var pausa = false
var menu : String
var barraP : int
func Randomizar(MinNum, MaxNum):
	rng.randomize()
	return rng.randi_range(MinNum, MaxNum)


func _process(_delta: float) -> void:
	if Input.is_key_pressed(KEY_Y):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("Saltar"):
		NivelesCompletados += 1
		print(NivelesCompletados)
