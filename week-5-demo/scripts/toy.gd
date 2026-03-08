extends RigidBody2D

@onready var _sprite = get_node("Sprite2D")

# STEP 2
var _bounces = 0.0

func _ready() -> void:
	set_contact_monitor(true)
	set_max_contacts_reported(2)
	_sprite.modulate = Color(0.0, 1.0, 0.1)

func _on_body_entered(_body: Node) -> void:
	# STEP 3
	_bounces += 1
	
	# STEP 1
	# Write Step 1 right below this comment. 
	print(_bounces)
	
	%UI._updateBounces(_bounces)
	
	var r = _sprite.modulate.r
	var g = _sprite.modulate.g
	var b = _sprite.modulate.b
	
	# Step 4
	r = r + 0.1
	# Step 5
	g = g - 0.1
	# Step 7
	b *= 1.2
	# Step 8
	if r > 1.0:
		r = 0.0
	# Step 9
	if g > 1.0:
		g = 0.0
	# Step 10
	if b > 1.0:
		b = 0.0
	_sprite.modulate = Color(r, g, b)
	
	# Step 6
	print(_sprite.modulate)
	
	# Step 11
	var brightness = (r + g + b)/3
	
	print(brightness)
	%UI._updateBrightness(brightness)
