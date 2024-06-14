extends CharacterBody2D

var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movement(delta)

func movement(delta):
	# check for player input
	var direction = Input.get_vector("move_left", "move_right", "move_up","move_down")
	velocity = direction * speed

	velocity = velocity.normalized() * speed
	move_and_slide()
