extends Node

# drag and hold ctrl while releasing create onready var with relative path
# get error if try to access child before parent onready
@onready var graphics: Sprite2D = $Player/Graphics
# $ is a short hand of get_node function -> relative path
@onready var weapon: Sprite2D = get_node('Player/Weapon') 

# use export to reference node by drag node into inspector 
@export var armor: Node # can be more static if assign Sprite2D type

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# print absolute path 
	print(weapon.get_path()) 
	
	# it is a Sprite2D and also a Node type
	if armor is Sprite2D: 
		print('it is a sprite')
	if armor is Node: 
		print('it is a Node')
