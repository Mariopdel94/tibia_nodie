#include header.ahk

SetDefaultMouseSpeed, 0

Global sqm := 60

;char position
char_x := 690
char_y := 450

auto_loot_hk := ini_read("config.ini", "hotkeys", "auto_loot")

Hotkey, IfWinActive, %main_char_window%
Hotkey, %auto_loot_hk%, AUTO_LOOT

return

AUTO_LOOT:
    loot_all(char_x, char_y)
    Return

loot_all(byRef char_x, byref char_y) {

    MouseGetPos, mouse_x, mouse_y
    ; MouseGetPos, xpos, ypos
    ; MsgBox, The cursor is at %xpos% %ypos%
    send("{LAlt down}")
    loot(char_x, char_y, 0, 0)   ;center
    loot(char_x, char_y, -1, -1) ;north-west
    loot(char_x, char_y, 0, -1)  ;north
    loot(char_x, char_y, 1, -1)  ;north-east
    loot(char_x, char_y, 1, 0)   ;east
    loot(char_x, char_y, 1, 1)   ;south-east
    loot(char_x, char_y, 0, 1)   ;south
    loot(char_x, char_y, -1, 1)  ;south-west
    loot(char_x, char_y, -1, 0)  ;west
    send("{LAlt up}")

    click(mouse_x, mouse_y, 0) ;return mouse to its original position
}

loot(x, y, byRef x_sign, byRef y_sign) {
    x := x + x_sign*sqm
    y := y + y_sign*sqm
    x_min := x - (sqm * 0.2)
    x_max := x + (sqm * 0.2)
    y_min := y - (sqm * 0.2)
    y_max := y + (sqm * 0.2)
    click_random(x_min, x_max, y_min, y_max, "left")
    random_sleep(35, 40)
}