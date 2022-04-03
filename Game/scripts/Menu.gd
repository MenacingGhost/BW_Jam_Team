extends Node

onready var _transition_rect := $SceneTransition

func _on_StartButton_pressed():
	_transition_rect.transition_to("res://scenes/main.tscn")
