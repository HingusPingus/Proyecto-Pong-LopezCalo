extends CharacterBody2D

var speed=300
var direction=Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var randomx =randf()
	var randomy =randf()
	if (randomx<0.5):
		direction.x +=randomx
	else:
		direction.x -=randomx
	if (randomy<0.5):
		direction.y +=randomy
	else:
		direction.y -=randomy


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity=direction*speed*delta
	var collision=move_and_collide(velocity)
	if collision:
		var collider=collision.get_collider()
		print(collision.get_collider())
		if collider is pared:
			direction.y -=direction.y*2
		if collider is arcoA:
			Global.pointsA+=1
			get_tree().reload_current_scene()
		if collider is arcoB:
			Global.pointsB+=1
			get_tree().reload_current_scene()
		if collider is arcos:
			get_tree().reload_current_scene()
		if collider is player:
			direction.x-=direction.x*2
	
