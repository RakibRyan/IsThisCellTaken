extends Node2D
@export var modded_tilemaps: Array
@export var map_list:Array
@export var total_no_of_maps:int

#-------------------------------------------------------------------------
func _ready():
	print("ready")  # Debug
	modded_tilemaps = get_children()  # Get only TileMaps
	total_no_of_maps = modded_tilemaps.size()
	print("Total TileMaps:", total_no_of_maps)  # Debug


#-----------This is the original code------------------------------------
# find all tile maps and slices them
#func _ready():
	#print("ready") #Debug
	#modded_tilemaps = find_children("*", "TileMap") #print(modded_tilemaps)
	#total_no_of_maps = modded_tilemaps.size()
	#print("Total number of maps: ", total_no_of_maps)
	for tile in modded_tilemaps:
		var temp = str(tile)
		temp = temp.get_slice(":", 0)
		map_list.append(temp)
	print_tree()
	#print(map_list)
	#print(modded_tilemaps)
#-----------------------------------------------------------------------------------------
# Function to find all TileMaps and process them
#func _ready():
	#print("ready") # Debugging output
	#var modded_tilemaps = [] # Array to store all TileMap nodes
	#var map_list = [] # Array to store processed map names
	#
	## Get all children of the current node
	#var children = get_children()
	#
	## Loop through the children and check if they are of type TileMap
	#for child in children:
		#if child is TileMap:
			#modded_tilemaps.append(child)
	#
	## Output the total number of TileMaps found
	#var total_no_of_maps = modded_tilemaps.size()
	#print("Total number of maps: ", total_no_of_maps)
	#
	## Slice and process the TileMaps (getting the name before ":")
	#for tile in modded_tilemaps:
		#var temp = str(tile)
		#temp = temp.get_slice(":", 0)
		#map_list.append(temp)
	#
	## Debugging output of the scene tree
	#print_tree()
#-----------------------------------------------
# Function to find all top-level TileMaps and process them
#func _ready():
	#print("ready") # Debugging output
	#var modded_tilemaps = [] # Array to store all top-level TileMap nodes
	#var map_list = [] # Array to store processed map names
	#
	## Loop through all direct children of the current node
	#for child in get_children():
		## If the child is a TileMap and is not inside another TileMap, process it
		#if child is TileMap:
			#modded_tilemaps.append(child)
	#
	## Output the total number of top-level TileMaps found
	#var total_no_of_maps = modded_tilemaps.size()
	#print("Total number of maps: ", total_no_of_maps)
	#
	## Process the TileMaps (getting the name before ":")
	#for tile in modded_tilemaps:
		#var temp = str(tile)
		#temp = temp.get_slice(":", 0)
		#map_list.append(temp)
		#print(temp)  # Print the processed name
	
	## Debugging output of the scene tree
	#print_tree()




# Toggles button
#  ------------------ But I have no idea why removing it breaks I need to read docs again and change this-------
func _on_toggle_map_overlays_toggled(_toggled_on):
	if self.visible == true:
		self.visible = false
	else:
		self.visible = true
		pass
	pass
