extends CanvasLayer
@onready var Barra = $CanvasGroup/BarraProceso
func _ready() -> void:
	$AnimationPlayer.play("Barra")
func _process(_delta: float) -> void:
	DetenerTimer()
func _on_timer_timeout() -> void:
	Global.timer += 1
	Barra.value += 1
	print(Global.timer)


func DetenerTimer():
	if Barra.value == 60:
		$Timer.stop()
		$AnimationPlayer.pause()
	elif Global.enJuego == false:
		$Timer.stop()
		$AnimationPlayer.pause()
