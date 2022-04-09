extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var attacked = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_door_body_entered(body):
	if "player" in body.name:
		if(body.key_equid):
			$AnimatedSprite.play("spin")


func _on_AnimatedSprite_animation_finished():
	get_tree().change_scene("res://scenes/Menu.tscn")
