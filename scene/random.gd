extends Node

# randf -> random float 
# randi -> random interger
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var roll = randf() # return float 0-1 
	print(roll)
	if roll < 0.8: 
		print('you found a common item')
	else:
		print('you found a rare item')
	
	var height = randi_range(140, 180) # return interger in range
	print('your charactor is ' + str(height) + 'cm tall')
	print("Your character is %d cm tall" %height)
