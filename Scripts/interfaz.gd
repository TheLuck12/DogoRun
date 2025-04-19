extends CanvasLayer
@onready var Barra = $CanvasGroup/BarraProceso
@onready var Animacion = $AnimationPlayer
func _process(_delta: float) -> void:
	DetenerTimer()
func _on_timer_timeout() -> void:
	Barra.value += 1

	
func TiempoBarra():
	if Global.Nivel <= 5: 
		Barra.max_value = 30
		Animacion.speed_scale = 2
	else:
		Barra.max_value = 60
		Animacion.speed_scale = 1
func DetenerTimer():
	#Detiene la Timer para la barra de progreso.
	if Barra.value == 60 or Global.enJuego == false :
		$Timer.stop()
		Animacion.pause()
