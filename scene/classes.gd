extends Node

@export var character_to_kill: Character




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	character_to_kill.die() 


# call down, signal up 

# call function from child, child send signal to parent,
# siblings send signal to parent and parent pass to other sibling
