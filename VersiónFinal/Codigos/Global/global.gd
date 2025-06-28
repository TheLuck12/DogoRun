extends Node

@onready var rng = RandomNumberGenerator.new()
var NivelesCompletados = 6
var Nivel : int
var provincia = 0
var vivo = false
var pausa = false
var menu : String
var barraP : int
var finNivel : bool
var control : int

func Randomizar(MinNum, MaxNum):
	rng.randomize()
	return rng.randi_range(MinNum, MaxNum)
	
