extends Control



func _on_pausa_button_down() -> void:
	Global.pausa = true
	get_tree().call_group("Menu", "MostrarMenuP")
	get_tree().call_group("Enemigo", "Fin")
	get_tree().call_group("Intefaz", "PausaOGameOver")
	ControlMusica.PausarMusicaInGame()
