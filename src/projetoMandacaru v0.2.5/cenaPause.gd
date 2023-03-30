 extends Node2D

func _on_voltarButton_pressed():
	$pauseOverlay.visible = true
	$CanvasLayer.visible = false


func _on_pauseButton_pressed():
	$pauseOverlay.visible = false
	$CanvasLayer.visible = true

func _on_quitButton_pressed():
	get_tree().quit()
