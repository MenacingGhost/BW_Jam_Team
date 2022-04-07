extends Node

onready var _transition_rect := $SceneTransition


func _on_StartButton_pressed():
	_transition_rect.transition_to("res://scenes/main.tscn")
	$"/root/MenuMusic".stop()
	
	
func _on_OptionsButton_pressed():
	_transition_rect.transition_to("res://scenes/Options.tscn")
	

func _on_CreditsButton_pressed():
	_transition_rect.transition_to("res://scenes/Credits.tscn")

