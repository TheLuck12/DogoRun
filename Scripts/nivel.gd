extends Node2D
#variables para instanciar Niveles
@export var nivel1 : PackedScene
@export var nivel2 : PackedScene

func _ready() -> void:
	CrearNivel()
	Global.enJuego = true
	Global.FinNivel = false

func _physics_process(_delta: float) -> void:
	pass

func VariarPiso():
	if Global.enJuego == false:
		$Obstaculos/DetectarObjTirable/CollisionShape2D.disabled = true

func CambiarPiso() -> void:
	VariarPiso()

func CrearNivel():
	if Global.Nivel == 1:
		InstanciarNivel(nivel1)
	elif Global.Nivel == 2:
		InstanciarNivel(nivel2)
		
func InstanciarNivel(Nivel):
	var InsNivel = Nivel.instantiate()
	InsNivel.global_position = Vector2.ZERO
	add_child(InsNivel)

func ActivarTimer(body: Node2D) -> void:
	if body.is_in_group("Enemigo"):
		body.Eliminar()
