extends Area2D

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("PJ"):
		Global.enJuego = false
		Global.FinNivel = true
		InstanciarPantalla()
		
@export var PantallaCarga : PackedScene

func InstanciarPantalla():
	var InsPantalla = PantallaCarga.instantiate()
	add_child(InsPantalla)
