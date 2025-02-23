extends CharacterBody2D

@onready var Sprite = $AnimatedSprite2D

var salte : int
@export var fuerzaSalto : int

func _ready() -> void:
	Sprite.play("Idle")

func _physics_process(delta: float) -> void:
	if Global.enJuego == true:
		Gravedad(delta)
		Saltar()
		Mover()
		move_and_slide()
	elif  Global.enJuego == false and Global.FinNivel == true:
		Sprite.modulate = Color("black")
	else:
		pass

func Gravedad(Masa):
	if not is_on_floor():
		velocity += get_gravity() * Masa

func Saltar():
	if Input.is_action_just_pressed("ui_accept") and is_on_floor() and salte == 0:
		velocity.y += -fuerzaSalto
		salte += 1
	else:
		Caida()
	MaxAltura()
	
func Mover():
	velocity.x = 500 
func Caida():
	if Input.is_action_just_released("ui_accept") and not is_on_floor() and salte == 1:
		velocity.y = 400
		salte += 1 
	elif is_on_floor() and salte != 0:
		salte = 0
func MaxAltura():
	if velocity.y <= -800:
		velocity.y = -800
