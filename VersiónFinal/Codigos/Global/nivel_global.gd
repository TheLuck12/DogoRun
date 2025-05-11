extends Node2D
@export var N1 :PackedScene
@export var N2 :PackedScene
@export var N3 :PackedScene
@export var N4 :PackedScene
@export var N5 :PackedScene

func _ready() -> void:
	ElegirNivel()


func _process(_delta: float) -> void:
	pass

func InstanciarNivel(Nivel):
	var insNivel = Nivel.instantiate()
	insNivel.global_position = Vector2.ZERO
	add_child(insNivel)
func ElegirNivel():
	if Global.Nivel == 1:
		InstanciarNivel(N1)
