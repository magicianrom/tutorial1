extends NinePatchRect

var self_opened = false

@onready var Button1 = $VBoxContainer/CheckButton1
@onready var Button2 = $VBoxContainer/CheckButton2
@onready var Button3 = $VBoxContainer/CheckButton3

@onready var BackgroundColor = get_parent().get_node("BackgroundColor")


func _input(event):
	if event.is_action_pressed("ui_accept"):
		toggle_menu()
		
		
func toggle_menu():
	self_opened = !self_opened
	if self_opened:
		self.visible = true
	else: 
		self.visible = false
					


func _on_check_button_1_pressed():
	handleButtonPress("1")


func _on_check_button_2_pressed():
	handleButtonPress("2")


func _on_check_button_3_pressed():
	handleButtonPress("3")

func handleButtonPress(button):
	var Color1 = $GridContainer/Panel1/ColorRect.color
	var Color2 = $GridContainer/Panel4/ColorRect.color
	var Color3 = $GridContainer/Panel7/ColorRect.color
	
	if button == "1":
		BackgroundColor.color = Color1
		Button2.set_pressed_no_signal(false)
		Button3.set_pressed_no_signal(false)
	if button == "2":
		BackgroundColor.color = Color2
		Button1.set_pressed_no_signal(false)
		Button3.set_pressed_no_signal(false)
	if 	button == "3":
		BackgroundColor.color = Color3
		Button1.set_pressed_no_signal(false)
		Button2.set_pressed_no_signal(false)

