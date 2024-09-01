extends CharacterBody2D

signal began_level
signal died


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var playing = false
var alive = true
var death_animation = preload("res://death_animation.tscn").instantiate()

#@onready var boxes = SceneTree.

func _physics_process(delta: float) -> void:
	# Make boxes invisible and begin level
	if Input.is_action_just_pressed("p_begin") and not playing:
		began_level.emit()
		playing = true
	elif Input.is_action_just_pressed("p_begin") and playing:
		get_tree().reload_current_scene.call_deferred()
		
	if playing:
		move(delta)
	#if not alive:
		

func move(delta):
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("p_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("p_left", "p_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	if position.y > 600 and alive:
		print("hi")
		create_death_animation()
		alive = false
		died.emit()

func create_death_animation():
	add_sibling(death_animation)
