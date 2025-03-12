extends CanvasLayer

func _process(delta: float) -> void:
	if Global.enJuego == false:
		$Timer.autostart = false


func _on_timer_timeout() -> void:
	Global.timer += 1
	$ProgressBar.value += 0.6
	$Label.text = str(Global.timer)
	
