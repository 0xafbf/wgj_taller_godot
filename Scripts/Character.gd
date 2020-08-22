extends KinematicBody2D

class_name Character

var tengo_llave = false
var posicion_inicial = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	posicion_inicial = position

func reiniciar():
	position = posicion_inicial

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2()
	
	if Input.get_action_strength("MoveLeft"):
		direction.x = -500
	if Input.get_action_strength("MoveRight"):
		direction.x = 500
	if Input.get_action_strength("MoveUp"):
		direction.y = -500
	if Input.get_action_strength("MoveDown"):
		direction.y = 500
	
	move_and_slide(direction)
