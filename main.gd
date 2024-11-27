extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
#	case sensitive
	print("Hello World")
	$Label.text = "Hello World"
	$Label.modulate = Color.GREEN

# turn red when press space
# project -> project setting -> Input map -> bind key
# build in function runs everytime when recieve a input such as press a key
# event is imfomation what trigger the function, move of mouse or press of key etc...
func _input(event): 
	#check if a certain key pressed
	if event.is_action_pressed("my_action"): 
		$Label.modulate = Color.RED
	if event.is_action_released("my_action"): 
		$Label.modulate = Color.GREEN
