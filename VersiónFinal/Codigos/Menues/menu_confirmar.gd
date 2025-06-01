extends Control


func Mostrar():
	visible = true


func Ocultar() -> void:
	visible = false



func LlamarPantallaCarga() -> void:
	Global.Nivel = 0
	ControlMusica.PararMusica()
	get_tree().call_group("Interfaz","ActPantalla")
