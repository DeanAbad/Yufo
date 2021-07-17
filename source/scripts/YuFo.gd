extends KinematicBody2D

var velocity : Vector2 = Vector2.ZERO
var speed : int = 150

func _ready() -> void:
	_self_set_hover_animation()


func _physics_process(delta) -> void:
	_self_set_user_input(Input, delta)

	velocity = move_and_slide(velocity, Vector2.UP)
	velocity = lerp(velocity, Vector2.ZERO, delta)


func _self_set_hover_animation() -> void:
	self.get_node("HoverAnimationPlayer").play("hover", -1, 0.5, false)


func _self_set_user_input(event, delta) -> void:
	if event.is_action_pressed("left"):
		velocity.x -= speed * delta
	if event.is_action_pressed("right"):
		velocity.x += speed * delta

