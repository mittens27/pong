extends CharacterBody2D

const SPEED = 100.0

var initial_direction_set = false

func _physics_process(delta):
	
	if not initial_direction_set:
		var random_direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
		velocity = random_direction * SPEED
		initial_direction_set = true

	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
