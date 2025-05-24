extends Node2D
@export var N1 :PackedScene
@export var N2 :PackedScene
@export var N3 :PackedScene
@export var N4 :PackedScene
@export var N5 :PackedScene

func _ready() -> void:
	ElegirNivel()
	OcultarMostrar()
	CambiarSprite(Global.provincia)

func _process(_delta: float) -> void:
	pass

func InstanciarNivel(Nivel):
	var insNivel = Nivel.instantiate()
	insNivel.global_position = Vector2.ZERO
	add_child(insNivel)

func ElegirNivel():
	if Global.Nivel == 1:
		InstanciarNivel(N1)
	if Global.Nivel == 2:
		InstanciarNivel(N2)
	if Global.Nivel == 3:
		InstanciarNivel(N3)
	if Global.Nivel == 4:
		InstanciarNivel(N4)
	if Global.Nivel == 5:
		InstanciarNivel(N5)
	print("estamos en el nivel: ", Global.Nivel)

func OcultarMostrar():
	if Global.barraP == 100:
		$Interfaz.visible = false
	elif Global.barraP == 0:
		$Interfaz.visible = true

func CambiarSprite(Provincia):
	if Provincia == 0:
		$Parallax/Monumentos/Monumentos.play("Obelisco")
		$Parallax/Piso/Pisos.play("BsAs")
		if Global.Nivel <= 5:
			$Parallax/Dia.play("Dia")
			$Parallax/Cielo/NubEst.play("Nubes")
		elif Global.Nivel >= 6:
			$Parallax/Dia.play("Noche")
			$Parallax/Cielo/NubEst.play("Estrellas")

func MostrarMenuP():
	if Global.pausa == true:
		$Interfaz/MenuPausa.global_position = $PosicionP.global_position  
		$Interfaz/MenuPausa.visible = true
		$Interfaz/Controles.visible = false
		get_tree().call_group("PJ","Perder")
	elif Global.pausa == false:
		$Interfaz/MenuPausa.visible = false
		$Interfaz/Controles.visible = true
		get_tree().call_group("PJ","EmpezaraJugar")
