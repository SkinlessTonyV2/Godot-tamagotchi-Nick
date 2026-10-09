extends Node

@onready var pet = get_parent()
@onready var room_manager = pet.get_parent().get_node("GuestPetManager")

func die():
	if pet.state == pet.PetState.DEAD:
		return

	print("DEATH FUNCTION CALLED")
	pet.state = pet.PetState.DEAD
	room_manager.pet_died()
