extends Control

func IrANivel():
	get_tree().change_scene_to_file("res://Escena/nivel.tscn")
	


func _on_button_button_down() -> void:
	$VBoxContainer2.global_position = Vector2(263,118)

func _on_button_2_button_down() -> void:
	get_tree().quit()


func _on_nivel_1_button_down() -> void:
	Global.Nivel = 1
	IrANivel()
