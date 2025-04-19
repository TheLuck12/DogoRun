extends StaticBody2D

func _process(_delta: float) -> void:
	if Global.enJuego == false:
		$AnimatedSprite2D.stop()

func _ready() -> void:
	$AnimatedSprite2D.play("Colectivo")

func _on_area_2d_area_entered(area: Area2D) -> void:
	#Detecta si hay contacto con el jugador y termina el nivel.
	if area.is_in_group("PJ"):
		Global.enJuego = false
		Global.FinNivel = true
		InstanciarPantalla()
		get_tree().call_group("Nivel", "OcultarTodo")
@export var PantallaCarga : PackedScene

func InstanciarPantalla():
	var InsPantalla = PantallaCarga.instantiate()
	add_child(InsPantalla)
