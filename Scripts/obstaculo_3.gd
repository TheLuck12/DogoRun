extends Area2D

@export var Movimiento = 0



func _process(_delta: float) -> void:
	if Global.vivo == true:
		Mover()

func Mover():
	if Movimiento == 0:
		position.y += 10
	else:
		position.y -= 10



func _on_area_entered(area: Area2D) -> void:
	#Detecta si hay contacto con el jugador y termina el nivel.
	if area.is_in_group("PJ"):
		Global.vivo = false
		Global.FinNivel = true
		InstanciarPantalla()
		get_tree().call_group("Nivel", "OcultarTodo")
@export var PantallaCarga : PackedScene

func InstanciarPantalla():
	var InsPantalla = PantallaCarga.instantiate()
	add_child(InsPantalla)
