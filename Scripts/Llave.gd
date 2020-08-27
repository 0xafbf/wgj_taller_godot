extends Area2D


var moneda_tomada = false

func _on_AreaLLave_body_entered(body):
	if body is Character:
		if not moneda_tomada:
			visible = false
			#body.tengo_llave = true
			body.cantidad_monedas += 1
			moneda_tomada = true
