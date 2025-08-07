extends Node

const MOD_DIR = "PapiLeem-CommaFormat/"
const LOG_NAME = "PapiLeem-CommaFormat"

var dir = ""
var ext_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderLog.info("Init", LOG_NAME)
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	ext_dir = dir + "extensions/ui"
	
	# Add extensions
	ModLoaderMod.install_script_extension(ext_dir + "/hud/ui_gold.gd")
	ModLoaderMod.install_script_extension(ext_dir + "/hud/ui_bonus_gold.gd")
	ModLoaderMod.install_script_extension(ext_dir + "/menus/run/gold_label.gd")
