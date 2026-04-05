
extends Node2D

@export var collectable_scene: PackedScene
@export var active_count: int

func _ready():
	spawn_drop(640)
	
func spawn_collectable():
	#if active_count > 10:
		#return
	spawn_drop(randf_range(0,1024))

func spawn_drop(x):
	
	active_count += 1
	var instance = collectable_scene.instantiate()
	instance.collected.connect(_on_collectable_collected)
	add_child(instance)
	instance.global_position = Vector2(x,-10)
	

func _on_collectable_collected():
	active_count -= 1
	spawn_collectable()
	spawn_collectable()
