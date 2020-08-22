extends KinematicBody2D


export var punto1 = Vector2()
export var punto2 = Vector2()

var objetivo = Vector2()
export var speed = 300.0

func _ready():
	objetivo = punto1


func _process(delta):
	
	var direction = objetivo - position
	
	move_and_slide(direction.normalized() * speed)
	
	if direction.length() < 100:
		print(direction.length())
		
		if objetivo == punto1:
			objetivo = punto2
		elif objetivo == punto2:
			objetivo = punto1

func _on_Area2D_body_entered(body):
	if body is Character:
		body.reiniciar()
