extends Node2D

func _ready() -> void:
	ComenzarNivel()

func Perder(_area: Area2D) -> void:
		get_tree().call_group("PJ","Perder")
		get_tree().call_group("Menu","Ocultar")
		ComenzarNivel()
func ComenzarNivel():
	if $AnimatedSprite2D.animation == "Colectivo" and Global.vivo == true:
		$AnimationPlayer.play("RuedasGirando")
	else:
		$AnimationPlayer.stop()
