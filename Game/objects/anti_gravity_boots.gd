extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("m")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
<<<<<<< HEAD


func _on_anti_gravity_boots_body_entered(body):
	queue_free()
=======
>>>>>>> parent of 633c5b7 (Delete Game directory)
