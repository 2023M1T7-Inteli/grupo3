extends Node2D


func _process(delta):
	if $"transiçãoVento".terminou:
		$"transiçãoVento".visible = false
