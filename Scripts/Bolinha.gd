extends CharacterBody2D

var forca
var direcao

func _ready():
	forca = 500
	direcao = Vector2(1,1)
	
func _physics_process(delta):
	if get_slide_collision_count() > 0:
		var colisao = get_slide_collision(0)
		
		#Efeito de quicar
		direcao = direcao.bounce(colisao.get_normal())
		
		#Gol jogador 1
		if colisao.get_collider().name == "Goljogador1":
			position = Vector2(0, 0)
			$"../Jogador2".pontos += 1
		
		#Gol jogador 2
		if colisao.get_collider().name == "Goljogador2":
			position = Vector2(0, 0)
			$"../Jogador1".pontos += 1
	
	velocity = forca * direcao
	move_and_slide()
