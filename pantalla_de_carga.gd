extends TextureProgressBar

var cargarPantalla : bool

func _ready() -> void:
	cargarPantalla = true
func _process(_delta: float) -> void:
	if cargarPantalla == true:
		value += 1.5
