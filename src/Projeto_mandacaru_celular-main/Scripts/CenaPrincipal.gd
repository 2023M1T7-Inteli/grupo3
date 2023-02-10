extends Node2D

# Essa função roda quando a cena é inicializada
func _ready():
	# Coloca uma instância da "abaDeSeleção" na variável "telaControle"
	var telaControle = load("res://Screens/AbaDeSelecao.tscn").instance()
	# Torna a variável tela controle "filha" do node acima da cena principal
	get_tree().current_scene.add_child(telaControle)

# Essa função registra quando o corpo do personagem entr na área 2D e incrementa a variável global i_contador
func _on_Area2D_body_entered(body):
	Global.i_contador += 1
