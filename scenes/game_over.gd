extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer/CenterContainer/VBoxContainer/Label2.text = str(Global.score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var reset = Input.is_action_just_pressed('game_reset')
	
	if (reset):
		get_tree().change_scene_to_file("res://scenes/level.tscn")
