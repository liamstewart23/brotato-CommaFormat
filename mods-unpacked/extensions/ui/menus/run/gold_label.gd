extends "res://ui/menus/run/gold_label.gd"

const NumberFormatter = preload("res://mods-unpacked/PapiLeem-CommaFormat/utils/number_formatter.gd")

func update_value(value: int)->void :
	text = NumberFormatter.format_with_commas(value)
