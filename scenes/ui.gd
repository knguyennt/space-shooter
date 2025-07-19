extends CanvasLayer

static var life_image = load("res://PNG/UI/playerLife1_blue.png")
var time_elapsed := 0
	

func set_health(amount):
	# remove all children
	for child in $MarginContainer2/HBoxContainer.get_children():
		child.queue_free()
	# create new children ammount set by health
	for i in amount:
		var text_rect = TextureRect.new()
		text_rect.texture = life_image
		$MarginContainer2/HBoxContainer.add_child(text_rect)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MarginContainer/Label.text = '0'


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_score_timer_timeout() -> void:
	time_elapsed += 1
	Global.score = time_elapsed
	$MarginContainer/Label.text = str(time_elapsed)
