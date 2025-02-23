extends Node2D

func _physics_process(_delta: float) -> void:
	pass

func VariarPiso():
	if Global.enJuego == false:
		$Obstaculos/DetectarObjTirable/CollisionShape2D.disabled = true

func CambiarPiso() -> void:
	VariarPiso()


func ActivarTimer(body: Node2D) -> void:
	if body.is_in_group("Enemigo"):
		body.Eliminar()
