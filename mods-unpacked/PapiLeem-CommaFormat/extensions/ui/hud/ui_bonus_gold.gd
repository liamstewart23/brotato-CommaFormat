extends "res://ui/hud/ui_bonus_gold.gd"

const NumberFormatter = preload("res://mods-unpacked/PapiLeem-CommaFormat/utils/number_formatter.gd")

# Init Value
func _ready() -> void :
	_gold_label.set_message_translation(false)
	_gold_label.text = NumberFormatter.format_with_commas(RunData.bonus_gold)

# Value on Update
func update_value(new_value: int) -> void :
	_gold_label.text = NumberFormatter.format_with_commas(new_value)
