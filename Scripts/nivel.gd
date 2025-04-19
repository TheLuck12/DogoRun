extends Node2D
#variables para instanciar Niveles
@export var PantallaCarga : PackedScene
@export var nivel1 : PackedScene
@export var nivel2 : PackedScene
@export var nivel3 : PackedScene
@export var nivel4 : PackedScene
@export var nivel5 : PackedScene
func _ready() -> void:
	InstanciarPantalla()


func _process(_delta: float) -> void:
	PausarJuego()

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
	elif Global.Nivel == 3:
		InstanciarNivel(nivel3)
	elif Global.Nivel == 4:
		InstanciarNivel(nivel4)
	elif Global.Nivel == 5:
		InstanciarNivel(nivel5)

func InstanciarNivel(Nivel):
	var InsNivel = Nivel.instantiate()
	InsNivel.global_position = Vector2.ZERO
	add_child(InsNivel)

func ActivarTimer(body: Node2D) -> void:
	if body.is_in_group("Enemigo"):
		body.Eliminar()

func InstanciarPantalla():
	var InsPantalla = PantallaCarga.instantiate()
	$Interfaz.visible = false
	$Jugador.visible = false
	Global.enJuego = false
	Global.FinNivel = false
	add_child(InsPantalla)
	$PantallaDeCarga/Carga.value = 100

func MostrarTodo():
	Global.enJuego = true
	$Interfaz.visible = true
	$Jugador.visible = true
	$Interfaz/AnimationPlayer.play("Barra")
	$Interfaz/Timer.start()
	$Interfaz/Timer.autostart = true
	CrearNivel()
	
func OcultarTodo():
	$Interfaz.visible = false
	$Jugador.visible = false

func PausarJuego():
	if Input.is_action_just_pressed("ui_cancel") and Global.enJuego == true:
		$Pausa.visible = true
		Global.enJuego = false
	elif Input.is_action_just_pressed("ui_cancel") and Global.enJuego == false:
		$Pausa.visible = false
		Global.enJuego = true
		$Jugador.animacion.play("Correr")
		$Interfaz/Timer.start()
		$Interfaz/AnimationPlayer.play("Barra")
