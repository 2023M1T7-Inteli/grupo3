extends Node2D

func _ready():
	# Incia com a notificação invisivel.
	$Notif.visible = false
	# Mantem o bau aberto quando troca de cena
	if Global.bauAberto == true:
		$anim.play("AbreInventario")
		
	# Incia em um tela com a notificação de item no caso dela nao ter sido apagada pelo usuário. Utilizei uma variável global onde essa informação é definida quando o último item é constado no dicionário global "itens".
	if Global.notif != null:
		if Global.notif == "pipoca":
			$Notif/ItemConquistado.text = "Pipoca"
		elif Global.notif == "baloes":
			$Notif/ItemConquistado.text = "Baloes"
		elif Global.notif == "instrumentos":
			$Notif/ItemConquistado.text = "Instrumentos"
		elif Global.notif == "roupa":
			$Notif/ItemConquistado.text = "Roupa"
		elif Global.notif == "fitas":
			$Notif/ItemConquistado.text = "Fitas"
		$Notif.visible = true
	# Faz a busca pelos itens do dicionário global, se for true (ou seja, se um item já foi pego pelo usuário), o inventário atualiza, carregando uma imagem constando todos os itens até o último conquistado.
	for item in Global.itens:
		if Global.itens[item][1]:
			if item == "pipoca":
				$Inventario.texture = preload("res://Imagens/Inventario1.jpg")
			elif item == "baloes":
				$Inventario.texture = preload("res://Imagens/Inventario2.jpg")
			elif item == "instrumentos":
				$Inventario.texture = preload("res://Imagens/Inventario3.jpg")
			elif item == "roupa":
				$Inventario.scale = Vector2(0.675, 0.675)
				$Inventario.texture = preload("res://Imagens/inventario4.jpg")
			elif item == "fitas":
				$Inventario.texture = preload("res://Imagens/inventario5.jpg")
				

func _process(_delta):
	# Algoritmo para identificar os itens no baú e mostrar uma notificação daqueles que não foram vistos pelo usuário. Utiliei o dicionário "itens" na cena global para guardar os dados dos itens. Assim, se o item for pego, o código continuará, o item será constado no dicionpario e aparecerá uma notificação de "item conquistado".
	for item in Global.itens:
		if Global.itens[item][0] and !Global.itens[item][1]:
			Global.itens[item][1] = true
			yield(get_tree().create_timer(0.2), "timeout")
			if item == "pipoca":
				$Notif/ItemConquistado.text = "Pipoca"
				$Inventario.texture = preload("res://Imagens/Inventario1.jpg")
				if Global.bauAberto == false:
					Global.notif = "pipoca"
			elif item == "baloes":
				$Inventario.texture = preload("res://Imagens/Inventario2.jpg")
				$Notif/ItemConquistado.text = "Baloes"
				if Global.bauAberto == false:
					Global.notif = "baloes"
			elif item == "instrumentos":
				$Inventario.texture = preload("res://Imagens/Inventario3.jpg")
				$Notif/ItemConquistado.text = "Instrumentos"
				if Global.bauAberto == false:
					Global.notif = "instrumentos"
			elif item == "roupa":
				$Inventario.scale = Vector2(0.675, 0.675)
				$Inventario.texture = preload("res://Imagens/inventario4.jpg")
				$Notif/ItemConquistado.text = "Roupa"
				if Global.bauAberto == false:
					Global.notif = "roupa"
			elif item == "fitas":
				$Inventario.texture = preload("res://Imagens/inventario5.jpg")
				$Notif/ItemConquistado.text = "Fitas"
				if Global.bauAberto == false:
					Global.notif = "fitas"
			if Global.bauAberto == false:
				Global.get_node("notificacao").play()
				$Notif.visible = true
	
# Ao clicar no baú, altera seu estado na variável "estado_bau".
func _on_BauBtn_pressed():
	if Global.bauAberto == false:
		$anim.play("AbreInventario")
		Global.bauAberto = true
		$Notif.visible = false
		Global.notif = null
		$BauAbrindo.play()
	else:
		$anim.play("FechaInventario")
		Global.bauAberto = false
		$BauFechando.play()
