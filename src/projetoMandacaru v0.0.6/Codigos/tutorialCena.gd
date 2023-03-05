extends Node2D

var terminouTutorial = false

func _on_tutorial_animation_finished(anim_name):
	terminouTutorial = true


func _on_botaoPassar_pressed():
	terminouTutorial = true
