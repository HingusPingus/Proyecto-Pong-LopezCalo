extends Node





func _process(delta: float) -> void:
	$Label.text=str(Global.pointsA)
	$Label2.text=str(Global.pointsB)
