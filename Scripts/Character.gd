extends KinematicBody2D

class_name Character

# var tengo_llave = false
var cantidad_monedas = 0
var posicion_inicial = Vector2()

export var player = 1

export var speed = 500.0

# Called when the node enters the scene tree for the first time.
func _ready():
	posicion_inicial = position

func reiniciar():
	position = posicion_inicial

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2()
	if player == 1:
		direction.x = Input.get_action_strength("MoveRight") - Input.get_action_strength("MoveLeft")
		direction.y = Input.get_action_strength("MoveDown") - Input.get_action_strength("MoveUp")
	else:
		direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	move_and_slide(direction * speed)
