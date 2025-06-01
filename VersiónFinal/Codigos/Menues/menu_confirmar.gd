extends Control


func Mostrar():
	visible = true


func Ocultar() -> void:
	visible = false



func LlamarPantallaCarga() -> void:
	get_tree().call_group("Interfaz","ActPantalla")
