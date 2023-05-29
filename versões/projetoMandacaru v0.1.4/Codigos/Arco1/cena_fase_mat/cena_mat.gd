extends Node2D

#cria uma variável chamada "contador" com o valor inicial 0
var contador = 0
#variável que verifica se o tutorial terminou
var terminouTutorial = false
#variável que armazena os textos que vão aparecer no diálogo
var dialogo = ["Pintor: Eu guardo as minhas tintas aqui. Para controlar o estoque eu costumo anotar a quantidade de latas de tinta que eu tenho. Se tenho 3 latas verdes e 3 latas roxas, quantas latas verdes e roxas tenho no toal?", "Pintor: Quantos potes de tinta tem na minha estante? Note que a estante tem 6 prateleiras com 3 latas em cada", "Pintor: Considerando todas as latas que tenho, se eu gastar 4 latas de tinta marrom e 4 latas de tinta roxa, quantas latas sobram no total?", "Pintor: Ontem eu tinha 24 latas de tinta mas emprestei algumas para uma amiga minha e hoje tenho apenas 18. Quantas latas eu emprestei para a minha amiga?",  "Pintor: Se eu tenho 6 cores e decido criar uma nova cor misturando azul e marrom e outra nova cor misturando azul e verde, com quantas cores ficarei no total?", "Pintor: Voce é muito bom em matemática, parabéns! Aqui está o quadro como prometido. Obrigado!"]

var resp = ""

#função que roda a cada atualização da tela
func _process(_delta):
	#define o texto que aparecerá na caixa de diálogo
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
	
#função ativada quando o botão "botaoPassar" for pressionado
func _on_botaoPassar_pressed():
	if contador == 5:
		get_tree().change_scene("res://Telas/Arco2/faseMaceio.tscn")
	
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
	elif contador == 2 and $Resposta.text == "10":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 3 and $Resposta.text == "6":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	elif contador == 4 and $Resposta.text == "8":
		contador += 1
		resp = "Certa resposta!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""
	
	elif contador == 1 and $Resposta.text == "1115":
		contador = 4
	else:
		resp = "Tente novamente!"
		yield(get_tree().create_timer(1.5), "timeout")
		resp = ""

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

func _on_deletBtn_pressed():
	resp.erase(resp.length() - 1, 1)
