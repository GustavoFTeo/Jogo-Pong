extends CharacterBody2D

var pontos

func _ready():
	pontos = 0
	
func _physics_process(delta):
	var eixo = Input.get_axis("Jogador1_subir", "Jogador1_descer")
	var forca = 400
	var direcao = Vector2(0, eixo)
	
	$"../Placarjogador1".text = str(pontos)
	
	velocity = direcao * forca
	move_and_slide()
