extends Node2D
@export var N1 :PackedScene
@export var N2 :PackedScene
@export var N3 :PackedScene
@export var N4 :PackedScene
@export var N5 :PackedScene

func _ready() -> void:
	print("estamos en el nivel: ", Global.Nivel)
	ElegirNivel()
	OcultarMostrar()

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
	
func OcultarMostrar():
	if Global.barraP == 100:
		$Interfaz.visible = false
	elif Global.barraP == 0:
		$Interfaz.visible = true
