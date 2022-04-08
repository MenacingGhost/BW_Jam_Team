extends KinematicBody2D

var Velocity = Vector2()
var direction = 1

func _ready():
	if direction == 1:
		$AnimatedSprite.flip_h = true
	$RayCast2D.position.x = $CollisionShape2D.shape.get_extents().x * direction


func _physics_process(delta):
	if is_on_wall() or not $RayCast2D.is_colliding():
		direction = direction * -1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		$RayCast2D.position.x = $CollisionShape2D.shape.get_extents().x * direction
	
	
	Velocity.y += 10
	Velocity = move_and_slide(Velocity,Vector2(0, -1))


func _on_player_detectyor_body_entered(body):
	if "player" in body.name:
		Velocity.x -= 280 


func _on_player_detector_right_body_entered(body):
	if "player" in body.name:
		Velocity.x += 280 
