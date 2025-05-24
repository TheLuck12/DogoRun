extends Control

func SacarMenuP():
	Global.pausa = false
	get_tree().call_group("Menu", "MostrarMenuP")
