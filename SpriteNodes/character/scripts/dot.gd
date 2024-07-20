extends CharacterBody2D

@export var speed = 300 #max character spd (pixel/sec)
@export var accel = 30  #charater acceleration up to max spd

func _physics_process(_delta: float) -> void:
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down",)
	
	velocity.x = move_toward(velocity.x, speed * direction.x, accel)
	velocity.y = move_toward(velocity.y, speed * direction.y, accel)
	
	move_and_slide()
