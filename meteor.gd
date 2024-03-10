extends Area2D

func _ready():
	var rng := RandomNumberGenerator.new()
	
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = randi_range(0, width)
	var random_y = randi_range(-100, -50)
	
	position = Vector2(random_x, random_y)
	
	
func _process(delta):
	position += Vector2(0, 1.0) * 400 * delta

func _on_body_entered(body):
	print(body.collision_layer) # Replace with function body.
