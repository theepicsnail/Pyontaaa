extends RigidBody2D

signal collected

func collect():
	emit_signal("collected")
	queue_free()
