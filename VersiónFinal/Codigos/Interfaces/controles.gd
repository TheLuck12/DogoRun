extends Control

func _ready() -> void:
	if Global.control == 0:
		$Saltar.visible = false
		$Bajar.visible = false
	elif Global.control == 1:
		$Saltar.visible = true
		$Bajar.visible = true
func _on_pausa_button_down() -> void:
	Global.pausa = true
	get_tree().call_group("Menu", "MostrarMenuP")
	get_tree().call_group("Enemigo", "Fin")
	get_tree().call_group("Intefaz", "PausaOGameOver")
	ControlMusica.PausarMusicaInGame()
