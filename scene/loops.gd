extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var items = ['potion', 'sword', 'armor'] 
	
	for item in items: 
# length is for string, it is a function, array is size!!! lol
		if item.length() > 5:
			print(item)
	
	for n in 8:  # print 0-7
		print(n)
		
	for n in range(2, 8):  # print 2-7
		print(n) 
		
	var glass := 0.0 
	
	while glass < 0.5:
		glass += randf_range(0.02,0.2) 
		if glass > 0.45:
			break # breakout
		if glass == 0.5: 
			continue # skip current loop
		print(glass) 
	print('your glass is half full')
