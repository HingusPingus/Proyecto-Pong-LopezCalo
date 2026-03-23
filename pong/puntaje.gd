extends Node





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text=str(Global.pointsA)
	$Label2.text=str(Global.pointsB)
