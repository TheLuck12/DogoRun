extends Node2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Jugador":
		if Global.Nivel > Global.NivelesCompletados :
			Global.NivelesCompletados += 1
		Global.Nivel  = 0
		Global.menu = "res://VersiónFinal/Escenas/Menues/menu_niveles.tscn"
		get_tree().call_group("Interfaz","ActPantalla")
		get_tree().call_group("PJ","NivelCompletado")
