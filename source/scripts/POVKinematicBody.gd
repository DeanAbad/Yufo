extends KinematicBody

var velocity : Vector3 = Vector3.ZERO
var speed : float = 1.25


func _process(delta) -> void:
	_self_set_user_input(Input, delta)

	velocity = move_and_slide(velocity, Vector3.UP)
	velocity = lerp(velocity, Vector3.ZERO, delta)


func _self_set_user_input(event, delta) -> void:
	if event.is_action_pressed("left"):
		velocity.x -= speed * delta
	if event.is_action_pressed("right"):
		velocity.x += speed * delta
	if event.is_action_pressed("up"):
		velocity.z -= speed * delta
	if event.is_action_pressed("down"):
		velocity.z += speed * delta
	if event.is_action_pressed("fly_up"):
		velocity.y += speed * delta
	if event.is_action_pressed("fly_down"):
		velocity.y -= speed * delta
