extends CharacterBody2D
const FSALTO = -650
const FCAIDA = 450
var salto = 0
func _ready() -> void:
	EmpezaraJugar()


func _physics_process(delta: float) -> void:
	if Global.vivo == true && Global.pausa == false && Global.finNivel == false:
		Saltar()
		Mover()
		Gravedad(delta)
		move_and_slide()
	elif Global.Nivel > 0:
		if Global.vivo == false or Global.pausa == true:
			$Animacion.stop()
func Mover():
		velocity.x = 500

func Saltar():
	if salto == 1:
		$Animacion.play("Saltar")
	if Input.is_action_just_pressed("Saltar") && salto == 0:
		velocity.y = FSALTO
		salto = 1
	elif !is_on_floor() && salto == 1:
		salto = 2 
	elif salto == 2 and !is_on_floor() && Input.is_action_just_pressed("Caer") or !is_on_floor() && Input.is_action_just_pressed("Caer"):
		velocity.y = FCAIDA
		salto = 3
	elif is_on_floor() == true && salto == 2 or is_on_floor() and salto == 3:
		$Animacion.play("Correr")
		salto = 0


func Gravedad(Masa):
	if !is_on_floor():
		velocity += get_gravity() * Masa

func EmpezaraJugar():
	if Global.barraP == 0 && Global.Nivel > 0:
		$Sonidos/Ladrido.play()
		$Animacion.play("Correr")
		Global.vivo = true
		Global.pausa = false
		Global.finNivel = false

func Perder():
	Global.vivo = false
	$Sonidos/Llorando.play()
	$Animacion.stop()
	ControlMusica.PararMusica()

func NivelCompletado():
	$Animacion.stop()
	Global.finNivel = true
	ControlMusica.PararMusica()

func DetectoEnemigo(area: Area2D) -> void:
	if area.is_in_group("Enemigo"):
		Perder()
		get_tree().call_group("Enemigo","ComenzarNivel")
		get_tree().call_group("Menu","Ocultar")
		get_tree().call_group("Enemigo","Fin")
