extends Control

func IrANivel():
	get_tree().change_scene_to_file("res://Escena/Niveles/nivel.tscn")
	


func _on_button_button_down() -> void:
	$VBoxContainer2.global_position = Vector2(263,118)
	$Titulo.global_position = Vector2(-1000, 0)
	$Button.global_position = Vector2(8, 622)
	$VBoxContainer.global_position = Vector2(-1000, 0)
func _on_button_2_button_down() -> void:
	get_tree().quit()

func _on_nivel_1_button_down() -> void:
	Global.Nivel = 1
	IrANivel()

func _on_nivel_2_button_down() -> void:
	Global.Nivel = 2
	IrANivel()

func _on_nivel_3_button_down() -> void:
	Global.Nivel = 3
	IrANivel()


func ReposicionarTodo() -> void:
	get_tree().reload_current_scene()


func _on_nivel_4_button_down() -> void:
	Global.Nivel = 4
	IrANivel()
