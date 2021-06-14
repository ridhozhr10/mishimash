extends KinematicBody2D


onready var _animation_player = $AnimationPlayer
onready var _sprite = $Sprite

func _ready():
	_animation_player.play("idle")
	pass # Replace with function body.
	
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		_sprite.flip_h = false
		_animation_player.play("run")
	elif Input.is_action_pressed("ui_left"):
		_sprite.flip_h = true
		_animation_player.play("run")
	elif Input.is_action_pressed("ui_down"):
		_animation_player.play("duck")
	else:
		_animation_player.play("idle")
