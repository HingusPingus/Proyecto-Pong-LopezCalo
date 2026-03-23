extends CharacterBody2D
class_name playerB
var SPEED = 300

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("Bmove_up","Bmove_down")
	velocity.y=direction * SPEED*delta
	var collision =move_and_collide(velocity)
	if collision:
		print("colision")
