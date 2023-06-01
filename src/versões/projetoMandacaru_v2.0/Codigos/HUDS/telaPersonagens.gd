extends Control

var joao = load("res://Imagens/sprite boy grande 3_0.png")
var maria = load("res://Imagens/spriteGirl.png")

func _on_BotaoJoao_pressed():
	Global.personagem = 1
	get_tree().change_scene("res://Telas/Arco1/faseCanions1.tscn")


func _on_Button_pressed():
	Global.personagem = 2
	get_tree().change_scene("res://Telas/Arco1/faseCanions1.tscn")
