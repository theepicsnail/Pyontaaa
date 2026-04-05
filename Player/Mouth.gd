extends Area2D

func _on_body_entered(body):
	print("on_body_entered")
	print(body)
	if body.is_in_group("collectable"):
		body.collect()  # if you made the function
