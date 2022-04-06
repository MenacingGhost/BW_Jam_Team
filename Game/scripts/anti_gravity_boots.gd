extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("m")




func _on_anti_gravity_boots_body_entered(body):
	if "player" in body.name:
		queue_free()
