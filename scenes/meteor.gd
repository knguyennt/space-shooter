extends Area2D

const meteorTextures := ["res://PNG/Meteors/meteorBrown_big1.png", "res://PNG/Meteors/meteorBrown_big2.png", "res://PNG/Meteors/meteorGrey_big1.png", "res://PNG/Meteors/meteorGrey_big2.png"]
var direction = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rng := RandomNumberGenerator.new()
	var sprite = $Sprite2D
	sprite.texture = load(meteorTextures.pick_random())
	direction = rng.randi_range(-1, 1)
	
	# start position
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-150, -50)
	position = Vector2(random_x, random_y)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var rng := RandomNumberGenerator.new()
	var speed := rng.randi_range(100,500)
	position += Vector2(direction, 1.0) * speed * delta


func _on_body_entered(body: Node2D) -> void:
	print("collide")
