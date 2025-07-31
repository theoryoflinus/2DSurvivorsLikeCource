extends Area2D
class_name HurtBoxComponent 

@export var health_component: Node

func _ready() -> void:
	area_entered.connect(on_area_entered)
	

func on_area_entered(other_area: Area2D):
	if not other_area is HitBoxComponent:
		return
		
	
	if health_component == null:
		return
		
	
	var hit_box_component = other_area as HitBoxComponent
	health_component.damage(hit_box_component.damage)
