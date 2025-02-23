extends Area2D

@export var objetoTirable : PackedScene 


func _process(_delta: float) -> void:
	if Global.enJuego == false:
		$Spawn/IntanciarObj.one_shot = true


func DetectarJugador(body: Node2D) -> void:
	if body.name == "Jugador":
		Global.enJuego = false

func TirarBotella():
	if Global.enJuego == true:
		var instanciarObjeto = objetoTirable.instantiate()
		instanciarObjeto.global_position = $Spawn/SpawnObjeto.global_position
		add_child(instanciarObjeto)

func IntanciarObjeto() -> void:
	TirarBotella()

	
