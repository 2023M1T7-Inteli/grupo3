extends Node2D

var rodar =  true

func _process(delta):
	if $"transiçãoVento".terminou:
		$"transiçãoVento".visible = false
