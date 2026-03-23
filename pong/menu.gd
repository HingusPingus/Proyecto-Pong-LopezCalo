extends Node2D


func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://pong.tscn")

func _on_configuracion_pressed() -> void:
	$CenterContainer/Botones.visible =false
	$CenterContainer/Config.visible=true

func _on_salir_pressed() -> void:
	get_tree().quit()

func _on_atras_pressed() -> void:
	$CenterContainer/Botones.visible =true
	$CenterContainer/Config.visible=false
	
	

func _on_ball_speed_value_changed(value: float) -> void:
	Global.ballSpeed=value


func _on_player_speed_value_changed(value: float) -> void:
	Global.playerSpeed=value
	
	


func _on_points_value_changed(value: float) -> void:
	Global.pointsToWin=value
