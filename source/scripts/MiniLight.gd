extends Spatial

var direction : int
var angle : float = 0.08

func _ready() -> void:
	direction = 1


func _process(_delta) -> void:
	_self_get_user_input(Input)
	self.rotate_y(angle * direction)


func _self_get_user_input(event) -> void:
	if event.is_action_pressed("left"):
		direction = -1
	if event.is_action_pressed("right"):
		direction = 1
