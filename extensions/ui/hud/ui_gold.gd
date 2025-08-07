extends "res://ui/hud/ui_gold.gd"

func update_value(value: int)->void :
	gold_label.text = format_with_commas(value)

func format_with_commas(number: int) -> String:
	var str_num := str(number)
	var chars := []
	var count := 0
	for i in range(str_num.length() - 1, -1, -1):
		chars.insert(0, str_num[i])
		count += 1
		if count % 3 == 0 and i != 0:
			chars.insert(0, ",")
	return "".join(chars)
