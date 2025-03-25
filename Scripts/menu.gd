extends Control

@export var PantallaCarga : PackedScene
func _ready()-> void:
	Global.menu = true

func InstanciarPantalla():
	var InsPantalla = PantallaCarga.instantiate()
	add_child(InsPantalla)
func _on_button_button_down() -> void:
	$VBoxContainer2.global_position = Vector2(263,118)
	$Titulo.global_position = Vector2(-1000, 0)
	$Button.global_position = Vector2(8, 622)
	$VBoxContainer.global_position = Vector2(-1000, 0)
func _on_button_2_button_down() -> void:
	get_tree().quit()

func _on_nivel_1_button_down() -> void:
	Global.Nivel = 1
	InstanciarPantalla()

func _on_nivel_2_button_down() -> void:
	Global.Nivel = 2
	InstanciarPantalla()

func _on_nivel_3_button_down() -> void:
	Global.Nivel = 3
	InstanciarPantalla()


func ReposicionarTodo() -> void:
	get_tree().reload_current_scene()


func _on_nivel_4_button_down() -> void:
	Global.Nivel = 4
	InstanciarPantalla()

func _on_nivel_5_button_down() -> void:
	Global.Nivel = 5
	InstanciarPantalla()
