extends Area2D

@export var objetoTirable : PackedScene 

func _process(_delta: float) -> void:
	if Global.enJuego == false:
		$Spawn/IntanciarObj.one_shot = true

func TirarBotella():
	if Global.enJuego == true:
		var instanciarObjeto = objetoTirable.instantiate()
		instanciarObjeto.global_position = $Spawn/SpawnObjeto.global_position
		add_child(instanciarObjeto)

func IntanciarObjeto() -> void:
	TirarBotella()

func _on_area_entered(area: Area2D) -> void:
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
