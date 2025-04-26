extends CanvasLayer



func VolverDePausa() -> void:
	get_tree().call_group("Nivel", "PausarJuego")
	queue_free()

func _on_menu_button_down() -> void:
	pass
