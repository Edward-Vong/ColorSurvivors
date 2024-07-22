extends CharacterBody2D
@export var speed = 300 #max character spd (pixel/sec)
@export var accel = 30  #charater acceleration up to max spd

func _physics_process(_delta: float) -> void:
	var direction: Vector2 = Input.get_vector("up", "down","left", "right", )
	
	if Input.is_action_pressed("left"):
		$Dot.flip_h = true
	if Input.is_action_pressed("right"):
		$Dot.flip_h = false
	
	velocity.x = move_toward(velocity.x, speed * direction.x, accel)
	velocity.y = move_toward(velocity.y, speed * direction.y, accel)
	
	move_and_slide()
