extends KinematicBody2D


func _ready():
	pass

var motion = Vector2()
var speed = 201
var player = null
func _physics_process(delta):
	motion = Vector2.ZERO
	
	if player:
		motion = position.direction_to(player.position)*speed
		

	
	motion = move_and_slide(motion)
	


func _on_Area2D_body_entered(body):
	if "player" in body.name:
		player = body


func _on_Area2D_body_exited(body):
	if "player" in body.name:
		player = null
