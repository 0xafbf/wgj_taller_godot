extends Control


func set_time(time):
	
	# aca se podria explorar como hacer que
	# tenga formato mm:ss
	var int_time = int(time)
	$ColorRect/RichTextLabel.text = str(int_time)

func mostrar_puntaje(score):
	$ColorRect/TextoPuntaje.text = str(score)

func game_over():
	print("FIN!")
