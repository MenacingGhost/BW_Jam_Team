extends KinematicBody2D

var Velocity = Vector2()
var direction = 0
var run = true

func _ready():
	pass


func _physics_process(delta):


	
	Velocity.y += 10
	Velocity = move_and_slide(Velocity,Vector2(0, -1))
	Velocity.x = 180 * direction

func _on_player_detectyor_body_entered(body):
	if(run):
		if "player" in body.name:
			direction = -1
			$AnimatedSprite.play("run")
			$AnimatedSprite.flip_h = false 


func _on_player_detector_right_body_entered(body):
	if(run):
		if "player" in body.name:
			direction = 1
			$AnimatedSprite.play("run")
			$AnimatedSprite.flip_h = true  


func _on_player_detectyor_body_exited(body):
	if "player" in body.name:
		direction = 0
		$AnimatedSprite.play("idle")


func _on_player_detector_right_body_exited(body):
	if "player" in body.name:
		direction = 0
		$AnimatedSprite.play("idle")


func _on_player_die_body_entered(body):
	if "player" in body.name:
		$AnimatedSprite.play("a")
	
	
