extends RigidBody2D

@export var torque_force := 50000.0
		
func _physics_process(delta):
		
	var direction = 0
	
	if Input.is_action_just_pressed("ui_accept"):
		apply_impulse(Vector2(0, -200))
	if Input.is_action_pressed("ui_right"):
		direction += 1
	if Input.is_action_pressed("ui_left"):
		direction -= 1

	if direction != 0:
		apply_torque(direction * torque_force)
