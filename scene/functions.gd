extends Node


# Called when the node enters the scene tree for the first time.
# _ means functions that not called by devs but by engine it self
func _ready() -> void:
	print(add(1,2)) 

func _input(event) -> void: 
	if event.is_action_pressed("my_action"): 
		jump() 
		

func jump(): 
	# add upward force 
	# play jump sounds 
	# play animation 
	print('jump')

func add(num1: int, num2: int) -> int: 
	var result = num1 + num2 
	return result
