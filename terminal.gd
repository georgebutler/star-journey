extends Control

@onready var log_text: RichTextLabel = %LogText
@onready var line_edit: LineEdit = %LineEdit
@onready var add_button: Button = %AddButton

const RANDOM_LOGS: Array[String] = [
	"[color=#ffcc00][ WARN ][/color] Solar flare activity detected. Modulating deflector shields.",
	"[color=#00ff66][  OK  ][/color] Fuel refinery operating at 98.4% nominal efficiency.",
	"[color=#ff3333][ALERT][/color] Core containment field status: Critical fluctuation (94% containment).",
	"[color=#00fcff][INFO ][/color] Receiving telemetry packet from deep space probe Echo-9.",
	"[color=#00fcff][INFO ][/color] Long-range scan completed. 2 Class-M terrestrial bodies detected.",
	"[color=#ffcc00][ WARN ][/color] Minor micro-meteoroid impact on bulkhead beta. Outer hull intact.",
	"[color=#00ff66][  OK  ][/color] Life support systems recalibrated. Atmosphere composition: 78% N2, 21% O2.",
	"[color=#ff3333][ALERT][/color] Hyperdrive capacitor discharge failure. Re-routing through auxiliary grid.",
	"[color=#00fcff][INFO ][/color] Sub-space frequency scan active. Audio transmission decrypted.",
	"[color=#00ff66][  OK  ][/color] Auto-pilot alignment verified. Trajectory locked to Kepler-186f."
]

func _ready() -> void:
	add_button.pressed.connect(_on_add_button_pressed)
	line_edit.text_submitted.connect(_on_line_edit_text_submitted)
	
	# Give focus to the LineEdit initially so user can type immediately
	line_edit.grab_focus()

func _on_add_button_pressed() -> void:
	_process_input()

func _on_line_edit_text_submitted(_new_text: String) -> void:
	_process_input()

func _process_input() -> void:
	var text: String = line_edit.text.strip_edges()
	
	if text != "":
		# Append user message
		append_log("[color=#00fcff][ USER ][/color] " + text)
		line_edit.clear()
	else:
		# Append random sci-fi log if user submitted empty input
		var random_log: String = RANDOM_LOGS[randi() % RANDOM_LOGS.size()]
		append_log(random_log)

func append_log(message: String) -> void:
	log_text.append_text(message + "\n")
