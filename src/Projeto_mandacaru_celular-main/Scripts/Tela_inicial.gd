extends Control

# Essa função roda quando a cena começa
func _ready():
	pass

# Essa função carrega a cena principal quando o botão "aluno" é apertado
func _on_Botoaluno_pressed():
	get_tree().change_scene("res://Screens/Cena principal.tscn")

#Essa função carrega a cena principal quando o botão "professor" é apertado
func _on_Botoprofessor_pressed():
	get_tree().change_scene("res://Screens/Cena principal.tscn")
