extends Control

	
		

func JuegoPc() -> void:
	Global.control = 0
	IrAPRincipal()


func JuegoCelu() -> void:
	Global.control = 1
	IrAPRincipal()
	
func IrAPRincipal():
	Global.menu = "res://VersiónFinal/Escenas/Menues/menu_principal.tscn"
	$PantallaCarga.ActPantalla()
