extends CharacterBody2D

var pontos

func _ready():
	pontos = 0
	
func _physics_process(delta):
	var eixo = Input.get_axis("Jogador2_subir", "Jogador2_descer")
	var forca = 400
	var direcao = Vector2(0, eixo)
	
	$"../Placarjogador2".text = str(pontos)
	
	velocity = direcao * forca
	move_and_slide()
