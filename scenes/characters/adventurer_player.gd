extends Node2D

var running = false
var left = false


# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	$animation.play("idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#$animation.flip_h = false
	#var currentTexture: StringName = $animation.animation
	
	
	if Input.is_action_just_pressed("left"):
		$animation.flip_h = true
		$animation.play("walk")
	if Input.is_action_just_released("left"):
		$animation.flip_h = true
		$animation.play("idle")
	if Input.is_action_just_pressed("right"):
		$animation.flip_h = false
		$animation.play("walk")
	if Input.is_action_just_released("right"):
		$animation.flip_h = false
		$animation.play("idle")
		
	if Input.is_action_just_pressed("jump"):
		#$animation.animation_looped()
		$animation.play("jump")
	if Input.is_action_just_released("jump"):
		#$animation.animation_looped()
		if $animation.animation != 'fall' and $animation.animation != 'idle':
			$animation.play("fall")
		
		
	if Input.is_action_just_pressed("attack"):
		$animation.play("attack1")



func _on_animation_animation_looped():
	$animation.play("idle") # Replace with function body.
