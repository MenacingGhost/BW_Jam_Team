extends Node2D


func _ready():
	$CanvasLayer/TimerBar/AnimationPlayer.play("mainTime")
	$"/root/MainMusic".play()




