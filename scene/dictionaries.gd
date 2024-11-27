extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var players = {
		'eric': 1,
		'alex': 30,
		'john': 56,
		'boss': {
			'level': 99,
			'health': 800
		}
	}
	print(players['alex']) # access
	# access nested dict
	print('boss is level ' + str(players['boss']['level']) + ' his health is ' + str(players['boss']['health']))
	players['eric'] = 2 # modify
	
	players['melisa'] = 99 # insert
	
	print(players) 
	
	#loop a dict 
	for player in players: 
		#       key                             value
		print(player + ' is level: ' + str(players[player]))
		
		
