extends StaticBody2D



func _on_Area2D_body_entered(body):
	if body is Character:
		if body.tengo_llave:
			if visible:
				layers = 0
				visible = false
			else:
				layers = 1
				visible = true
