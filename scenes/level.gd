extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var screen_size := get_viewport().get_visible_rect().size
	var rng := RandomNumberGenerator.new()
	for star in $Stars.get_children():
		var random_x = rng.randi_range(0, screen_size.x)
		var random_y = rng.randi_range(0, screen_size.y)
		star.position = Vector2(random_x, random_y) 
		var random_scale = rng.randf_range(0,1)
		star.scale = Vector2(random_scale, random_scale)
		star.speed_scale = rng.randf_range(0.5,1.5)


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
