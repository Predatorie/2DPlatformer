class_name Player extends CharacterBody2D

@onready var sprite: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

@export var speed : float = 200
@export var gravity: float = 980

var direction: float

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	handle_movement(delta)		
	update_animations()
	move_and_slide()
	

func update_animations() -> void:
	if (not is_on_floor()):
		if (velocity.y < 0):
			animation_player.play("jump")
		else:
			animation_player.play("fall")	
	else:
		if (velocity.x != 0):
			animation_player.play("run")
		else:
			animation_player.play("idle")	
	
func handle_movement(delta: float)	-> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * speed
		sprite.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
