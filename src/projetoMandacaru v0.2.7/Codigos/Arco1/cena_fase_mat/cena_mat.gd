extends Node2D

# Cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
# Variável que verifica se o tutorial terminou
var terminouTutorial = false
# Variável que armazena os textos que vão aparecer no diálogo
var dialogo = ["Pintor: Eu guardo as minhas tintas aqui. Para controlar o estoque eu costumo anotar a quantidade de latas de tinta que eu tenho. Se tenho 3 latas verdes e 3 latas roxas, quantas latas verdes e roxas tenho no toal?", "Pintor: Quantos potes de tinta tem na minha estante? Note que a estante tem 6 prateleiras com 3 latas em cada", "Pintor: Considerando todas as latas que tenho, se eu gastar 3 latas de tinta marrom e 3 latas de tinta roxa, quantas latas sobram no total?", "Pintor: Ontem eu tinha 22 latas de tinta mas emprestei algumas para uma amiga minha e hoje tenho apenas 18. Quantas latas eu emprestei para a minha amiga?",  "Pintor: Se eu tenho 6 cores e decido criar uma nova cor misturando parte da tinta azul e parte da marrom e outra nova cor misturando parte da roxa e parte da verde, com quantas cores ficarei no total?", "Pintor: Voce é muito bom em matemática, parabéns! Aqui está o quadro como prometido. Obrigado!"]
# Variável que contém a resposta atual do usuário dentro da caixa de input.
var resp = ""

# Função que roda a cada atualização da tela
func _process(_delta):
	# Define o texto que aparecerá na caixa de diálogo
	$caixaDialogo.text = dialogo[contador]
	$Resposta.text = resp
	
	if contador == 5:
		$pelicula2.visible = true
		$quadroCanions.visible = true
		$NumericKeyboard.visible = false
		$Resposta.visible = false
		$Delet.visible = false
		$enviar.visible = false
		$botaoPassar.visible = true
	
# Função ativada quando o botão "botaoPassar" for pressionado
func _on_botaoPassar_pressed():
	if contador == 5:
		Global.canionsDouradosfez = true
		get_tree().change_scene("res://Telas/Arco2/faseMaceio1.tscn")
	
# Função que ao licar no botão, recolhe a resposta do usuário a partir da variável "resp", e se a resposta for a certa para cada pergunta representada pelo contador, passará para a próxima pergunta e a variável de resposta apagará, se não, aparecerá a mensagem "tente novamente" e o usuário repetirá a mesma pergunta até acertar.
func _on_enviarBtn_pressed():
	if contador == 0 and $Resposta.text == "6":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 1 and $Resposta.text == "18":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 2 and $Resposta.text == "12":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 3 and $Resposta.text == "4":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 4 and $Resposta.text == "8":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 0 and $Resposta.text == "1115":
		contador = 4
	else:
		resp = "Tente novamente!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""

#Botões que, ao clicar, adicionam o número contido no botão na resposta do usuário.
func _on_Button0_pressed():
	resp += "0"

func _on_Button1_pressed():
	resp += "1"

func _on_Button2_pressed():
	resp += "2"

func _on_Button3_pressed():
	resp += "3"
	
func _on_Button4_pressed():
	resp += "4"

func _on_Button5_pressed():
	resp += "5"

func _on_Button6_pressed():
	resp += "6"

func _on_Button7_pressed():
	resp += "7"

func _on_Button8_pressed():
	resp += "8"

func _on_Button9_pressed():
	resp += "9"

# Botão que, ao clicar, exclui o último número na resposta do usuário.
func _on_deletBtn_pressed():
	resp.erase(resp.length() - 1, 1)
