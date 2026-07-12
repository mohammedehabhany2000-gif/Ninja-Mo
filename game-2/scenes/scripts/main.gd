extends Node2D


var level: int= 1
var current_level_root:Node =null


func _ready() -> void:
	current_level_root= get_node("levelroot")
	
	
	
	var exit =current_level_root.get_node_or_null("exit")
	
	if exit:
		exit.body_entered.connect(_on_exit_body_entered)
		
		
func _load_level(level_number: int)-> void:
	if current_level_root:
		current_level_root.queue_free()










func _on_exit_body_entered(body: Node2D) ->void:
	if body.name == "player":
		level += 1
		print(level)
