extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	print("meteor") # Replace with function body.

var meteor_scence: PackedScene = load("res://scenes/meteor.tscn")
var laser_scence: PackedScene = load("res://scenes/laser.tscn")

func _on_meteor_timer_timeout() -> void:
	var meteor = meteor_scence.instantiate()
	$Meteors.add_child(meteor)


func _on_player_laser(pos) -> void:
	var laser = laser_scence.instantiate()
	$Lasers.add_child(laser)
	laser.position = pos
	
	print("player shoot ", pos )
