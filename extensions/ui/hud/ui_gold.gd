extends "res://ui/hud/ui_gold.gd"

const NumberFormatter = preload("res://mods-unpacked/PapiLeem-CommaFormat/utils/number_formatter.gd")

func update_value(value: int)->void :
	gold_label.text = NumberFormatter.format_with_commas(value)
