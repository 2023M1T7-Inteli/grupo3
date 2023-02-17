extends Node2D

var iniciocenario1 = false
var abriucenario = false

	
func _ready():
	abriucenario = true
	
func soma():
	pass

func _process(delta):
	if abriucenario:
		abriucenario = false
	if iniciocenario1:
		pass
		

func _on_botaoPronto_pressed():
	iniciocenario1 = true
