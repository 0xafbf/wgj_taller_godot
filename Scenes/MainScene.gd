extends Node2D


export var time = 60.0 * 3 # 3 minutos

func _process(delta):
	
	if Input.is_action_pressed("ui_cancel"):
		reset()
	
	# este codigo se llama todos los frames, aca podemos ir reduciendo el tiempo
	time -= delta
	
	var score = $Character.cantidad_monedas
	score += $Character2.cantidad_monedas
		
	var personajes_en_meta = $Character.en_meta && $Character2.en_meta
	
	if personajes_en_meta:
		$Camera2D/UI.game_over()
	
	# suelo dejar las cosas "visuales" al final del 
	# process
	$Camera2D/UI.set_time(time)	
	$Camera2D/UI.mostrar_puntaje(score)
	

func reset():
	# mm no me acuerdo
	var monedas = get_tree().get_nodes_in_group("monedas")
	
	for moneda in monedas:
		moneda.reset()
	


func _on_meta_body_exited(body):
	if body is Character:
		body.en_meta = false

func _on_meta_body_entered(body):
	if body is Character:
		body.en_meta = true
