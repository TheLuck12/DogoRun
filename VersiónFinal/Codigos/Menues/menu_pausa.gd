extends Control

func SacarMenuP():
	Global.pausa = false
	get_tree().call_group("Menu", "MostrarMenuP")
func IrMenuPr():
	LlamarPantallaDeCarga()
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_principal.tscn"
func IrMenuNi():
	LlamarPantallaDeCarga()
	if Global.provincia == 0:
		Global.menu = "res://VersiónFinal/Escenas/Menues/Niveles/nivel_1_10.tscn"
func IrMapa():
	LlamarPantallaDeCarga()
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_niveles.tscn"
	
func Reiniciar():
	LlamarPantallaDeCarga()
	Global.menu = "res://VersiónFinal/Escenas/Global/nivel_global.tscn"
func LlamarPantallaDeCarga():
	$PantallaCarga.ActPantalla()
