extends KinematicBody2D


func _ready():
	pass

var motion = Vector2()
var speed = 50

func _physics_process(delta):
	var player = get_parent().get_node("player")
	
	position += (player.position - position)/80
	
	move_and_slide(motion)
	
