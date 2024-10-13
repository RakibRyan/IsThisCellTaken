extends RichTextLabel

@onready var mod_maps_node = $"../../../mod maps"

var map_list

# -------- Needs changes------------------
# handels toggling of all maps
func _on_button_toggled(_toggled_on): # Again I have no idea what delta does and why it breaks
	
	if self.visible == true:
		self.visible = false
	else:
		self.visible = true


func ready():
	print(mod_maps_node.map_list)
	pass
	map_list = mod_maps_node.map_list
# Called when the node enters the scene tree
	# Join the array elements with a newline character
	var text_to_display = ""
	for element in map_list:
		text_to_display += element + "\n"
	# Set the text to the RichTextLabel
	self.text = text_to_display
