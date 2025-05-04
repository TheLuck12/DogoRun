extends Node2D
@export var N1 :PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ElegirNivel()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func InstanciarNivel(Nivel):
	var insNivel = Nivel.instantiate()
	insNivel.global_position = Vector2.ZERO
	add_child(insNivel)
func ElegirNivel():
	if Global.Nivel == 1:
		InstanciarNivel(N1)
