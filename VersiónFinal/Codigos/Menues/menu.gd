extends Control


func SalirDelJuego() -> void:
	get_tree().quit()


func IrMenuNiveles() -> void:
	get_tree().change_scene_to_file("res://VersiónFinal/Escenas/Menues/menu_niveles.tscn")


func IrMenuAjustes() -> void:
	get_tree().change_scene_to_file("")
