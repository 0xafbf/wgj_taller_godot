extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.get_action_strength("MoveLeft"):
		position.x = position.x - 5
	if Input.get_action_strength("MoveRight"):
		position.x = position.x + 5
	if Input.get_action_strength("MoveUp"):
		position.y = position.y - 5
	if Input.get_action_strength("MoveDown"):
		position.y = position.y + 5
	
