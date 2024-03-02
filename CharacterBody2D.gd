extends CharacterBody2D

const SPEED = 50

func _physics_process(delta):

	var direction = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	velocity.y = direction * SPEED
	
	move_and_slide()
