extends Spatial

var direction : int
var angle : float = 1.0

func _physics_process(delta) -> void:
	_self_set_input(Input, delta)
	print(self.get_node("HAxis").rotation_degrees.x)


func _self_set_input(event, delta) -> void:
	if event.is_action_pressed("up"):
		if self.get_node("HAxis").rotation_degrees.x <= 11.46:
			self.get_node("HAxis").rotate_x(angle * delta)
	if event.is_action_pressed("down"):
		if self.get_node("HAxis").rotation_degrees.x >= -7.64:
			self.get_node("HAxis").rotate_x(-angle * delta)
