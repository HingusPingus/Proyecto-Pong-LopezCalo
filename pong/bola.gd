extends CharacterBody2D

var speed=Global.ballSpeed
var direction=Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	if Global.lastPoint=="a":
		direction.x +=1
	else:
		direction.x -=1


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
			Global.pointsB+=1
			Global.lastPoint="b"
			if Global.pointsToWin==Global.pointsB:
				Global.pointsA=0
				Global.pointsB=0
				get_tree().change_scene_to_file("res://menu.tscn")
			else:
				get_tree().reload_current_scene()		
		if collider is arcoB:
			Global.pointsA+=1
			Global.lastPoint="a"
			if Global.pointsToWin==Global.pointsA:
				Global.pointsA=0
				Global.pointsB=0
				get_tree().change_scene_to_file("res://menu.tscn")
			else:
				get_tree().reload_current_scene()
		if collider is playerA || collider is playerB:
			direction.x-=direction.x*2
			direction.y = randf()*2.0 - 1

	
