extends Node2D


func _on_botaoCanions_pressed():
	get_tree().change_scene("res://Telas/Arco1/faseCanions1.tscn")


func _on_botaoMaceio_pressed():
	if Global.canionsDouradosfez:
		get_tree().change_scene("res://Telas/Arco2/faseMaceio1.tscn")
