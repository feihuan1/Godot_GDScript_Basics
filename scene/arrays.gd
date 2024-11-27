extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
# array can be dynamic or static type
	var items: Array[String] = ['sword', 'armor', 'potion'] 
	var mix_items = ['heart', 1, true] 
	
	print(items[0]) # access 
	
	items[1] = 'pants' # modify 
	print(items[1]) 
	
	items.remove_at(1) # remove index 
	items.append('new armor')  # push to end
	print(items)
	print(items.size()) # get length
