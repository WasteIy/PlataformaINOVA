extends Area2D
@onready var sprite = $AnimatedSprite2D


func _on_body_entered(body: Node2D) -> void:
	sprite.play("feedback")

func _on_animated_sprite_2d_animation_finished() -> void:
	if sprite.animation == "feedback":
		queue_free()
