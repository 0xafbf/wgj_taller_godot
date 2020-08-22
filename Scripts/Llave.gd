extends Area2D



func _on_AreaLLave_body_entered(body):
	if body is Character:
		visible = false
		body.tengo_llave = true
