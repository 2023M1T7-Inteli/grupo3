extends KinematicBody2D

# Essa variável controla a velocidade do personagem
var velocidade = 40000

# Essa variável mantém registro do último valor da variável "i_contador"
var i_velho

# Função executada quando a cena se inicia
func _ready():
	pass
	
# Função que processa a física do personagem
func _physics_process(delta):
	
	# Essa variável copia do objeto "Comandos"
	var copiaComandos = get_parent().get_node("AbaDeSelecao/Comandos")
	
	# Essa variável registra dois valores utilizadas na orientação "X" e "Y" do personagem
	var movimento = Vector2()
	
	# Estrutura condicional que checa se o botão "iniciar" já foi pressionado e se a variável i_contador foi incrementada
	if copiaComandos.iniciou == true && i_velho!=Global.i_contador:
		
		# Atualiza a variável i_velho
		i_velho = Global.i_contador
		
		# Checa o que está escrito na variável "array[i_contador]" e modifica a variável movimento com a condição
		if copiaComandos.array[Global.i_contador] == "esquerda":
			movimento.x -= velocidade
			
		elif copiaComandos.array[Global.i_contador] == "direita": 
			movimento.x += velocidade
			
		elif copiaComandos.array[Global.i_contador] == "baixo":
			movimento.y += velocidade
			
		elif copiaComandos.array[Global.i_contador] == "cima":
			movimento.y -= velocidade
			
		# Aqui o códio atualiza o movimento do personagem
		movimento = movimento.normalized()
		move_and_slide(movimento*velocidade)
