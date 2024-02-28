extends CharacterBody2D

const SPEED = 50.0

@onready var ball = get_node("/root/world/ball")

func _physics_process(delta):
	
	var direction = global_position.direction_to(ball.global_position)
	velocity.x = 0
	velocity.y = direction.y * SPEED
	move_and_slide()
