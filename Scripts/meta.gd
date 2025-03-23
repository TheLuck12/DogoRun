extends Area2D

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("PJ"):
		Global.enJuego = false
		Global.FinNivel = true
		get_tree().change_scene_to_file("res://Escena/menu.tscn")
