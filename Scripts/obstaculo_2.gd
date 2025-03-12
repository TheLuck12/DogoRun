extends StaticBody2D

func _ready() -> void:
	$AnimatedSprite2D.play("Colectivo")
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("PJ"):
		Global.enJuego = false
		$AnimatedSprite2D.stop()
