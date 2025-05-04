extends Control


func VolverMapa() -> void:
	get_tree().change_scene_to_file("res://VersiónFinal/Escenas/Menues/menu_niveles.tscn")

func IrANivel():
	get_tree().change_scene_to_file("res://VersiónFinal/Escenas/Global/nivel_global.tscn")
 


func InstanciarN1() -> void:
	Global.Nivel = 1 #ColocarElNivelDiseñado
	IrANivel()
