extends Node2D
@export var N1 :PackedScene
@export var N2 :PackedScene
@export var N3 :PackedScene
@export var N4 :PackedScene
@export var N5 :PackedScene
@export var N6 :PackedScene
@export var N7 :PackedScene
@export var N8 :PackedScene
@export var N9 :PackedScene
@export var N10 :PackedScene

func _ready() -> void:
	ControlMusica.PararMusica()
	ElegirNivel()
	$Interfaz/MenuPausa.global_position = $PosicionDeMenu/PosicionP.global_position  
	$Interfaz/MenuConfirmar.global_position = $PosicionDeMenu/PosicionC.global_position
	if Global.Nivel >= 6:
		$Meta.global_position = $Fin45sg.global_position	  
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
	elif Global.Nivel == 2:
		InstanciarNivel(N2)
	elif Global.Nivel == 3:
		InstanciarNivel(N3)
	elif Global.Nivel == 4:
		InstanciarNivel(N4)
	elif Global.Nivel == 5:
		InstanciarNivel(N5)
	elif Global.Nivel == 6:
		InstanciarNivel(N6)
	elif Global.Nivel == 7:
		InstanciarNivel(N7)
	elif Global.Nivel == 8:
		InstanciarNivel(N8)
	elif Global.Nivel == 9:
		InstanciarNivel(N9)
	elif Global.Nivel == 10:
		InstanciarNivel(N10)

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
			$Parallax/Fondo.modulate = "5FB3DB"
			$Parallax/Cielo/NubEst.play("Nubes")
			$Parallax/Medio/Medio.play("BsAsBDia")
			$Parallax/Cielo/NubEst.modulate = "ffffffb7"
		elif Global.Nivel >= 6:
			$Parallax/Fondo.modulate = "07101D"
			$Parallax/Medio/Medio.play("BsAsBNoche")
			$Parallax/Cielo/NubEst.play("Estrellas")
			$Parallax/Cielo/NubEst.modulate = "ffffff"
func MostrarMenuP():
	if Global.pausa == true:
		$Interfaz/MenuPausa.visible = true
		$Interfaz/Controles.visible = false
		get_tree().call_group("Interfaz", "TituloDeMenu", "PAUSA")
	elif Global.pausa == false:
		$Interfaz/MenuPausa.visible = false
		$Interfaz/Controles.visible = true
		get_tree().call_group("PJ","EmpezaraJugar")
		
func MostrarMenuLose():
		$Interfaz/MenuPausa.visible = true
		$Interfaz/Controles.visible = false
		$Interfaz/MenuPausa/Volver.visible = false
		get_tree().call_group("Interfaz", "TituloDeMenu", "GAME OVER")
