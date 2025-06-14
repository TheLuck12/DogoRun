extends Node

@onready var rng = RandomNumberGenerator.new()
var NivelesCompletados = 1
var Nivel : int
var provincia = 0
var vivo = false
var pausa = false
var menu : String
var barraP : int
var finNivel : bool

func Randomizar(MinNum, MaxNum):
	rng.randomize()
	return rng.randi_range(MinNum, MaxNum)
	

func _process(_delta: float) -> void:
	if Input.is_key_pressed(KEY_Y):
		get_tree().call_group("Interfaz", "ActPantalla")
