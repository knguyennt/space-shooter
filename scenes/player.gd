extends CharacterBody2D

@export var speed: int = 500
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(100,500) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_pressed("right yeah"):
		#position += Vector2(1,0) * 20 * delta
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()
