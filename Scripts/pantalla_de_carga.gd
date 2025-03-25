extends TextureProgressBar

func _process(_delta: float) -> void:
	LlenarYVaciarBarra()
func IrNivel():
	if value == 100 and Global.menu:
		Global.menu = false
		get_tree().change_scene_to_file("res://Escena/Niveles/nivel.tscn")
	elif value == 100 and Global.FinNivel:
		get_tree().change_scene_to_file("res://Escena/menu.tscn")
		
		
func LlenarYVaciarBarra():
	if Global.menu or Global.FinNivel:
			value += 1.5
			get_tree().call_group("Nivel", "OcultarTodo")
			IrNivel()
	elif !Global.enJuego:
			value -= 1.5
			if value == 0 and !Global.enJuego: 
				get_tree().call_group("Nivel", "MostrarTodo")
				queue_free()
