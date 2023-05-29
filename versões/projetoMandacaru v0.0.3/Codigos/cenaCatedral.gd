extends Node2D

#valor inicial de um contador interno
var contador = 0
#define uma validação para iniciar o mecanismo principal da cena
var validacao =  true
	
#função que inicializa a cena
func _ready():
	#inicia a animação feita na apresentação da cena
	$cenaCatedral.play("cutsceneCatedral")
	
#função que roda a cada frame do jogo
func _process(delta):
	#condição que inicia se a validação de cógido for verdadeira
	if validacao:
		#adiciona o valo 1 ao contador
		contador += 1
		#condição que inicia se o contador exceder 140
		if contador >= 140:
			#esconde a transição de cenas, para que os controles não sejam afetados
			$transicao/animacaoTransicao/fundo.hide()
			#retorna para falsa a variável validação
			validacao = false
			#reinicia o contador para 0
			contador = 0 
