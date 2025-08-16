extends Node

@onready var rng = RandomNumberGenerator.new()
var NivelesCompletados : int
var Nivel : int
var provincia = 0
var vivo = false
var pausa = false
var menu : String
var barraP : int
var finNivel : bool
var control = 1


func Randomizar(MinNum, MaxNum):
	rng.randomize()
	return rng.randi_range(MinNum, MaxNum)
	
