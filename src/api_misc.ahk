ini_read(ByRef ini_file, ByRef ini_section, ByRef ini_key, ByRef ini_default := "error")
{
    IniRead, output_var, %ini_file%, %ini_section%, %ini_key%, %ini_default%
    return %output_var%
}

random_sleep_k(ByRef min, ByRef max) {

	sleep(random_k(min, max))
}

random_sleep(ByRef min, ByRef max) {

	sleep(random(min, max))
}

random_k(ByRef min, ByRef max) {

    random, n, % min*1000, % max*1000
	return %n%
}

random(ByRef min, ByRef max) {

    random, r, %min%, %max%
	return %r%
}

send(ByRef key) {

    Send, %key%
}

click(byRef x, byRef y, byref mouse_button) {

    SendEvent {Click %x%, %y%, %mouse_button%}
}

click_random(ByRef x_min, ByRef x_max, ByRef y_min, ByRef y_max, ByRef mouse_button) {

    x := random(x_min, x_max)
    y := random(y_min, y_max)
    SendEvent {Click %x%, %y%, %mouse_button%}
}


send_active_window(ByRef key, ByRef window) {
    if !window_active(window)
        return

    send(key)
}

sleep(ByRef t) {
    Sleep, %t%
}

control_send_key_inactive_window(byRef key, ByRef window) {
    if !window_active(window)
        return control_send(key, window)
}

control_send(ByRef key, ByRef window) {
    ControlSend, ahk_parent, %key%, %window%
}


window_active(ByRef window) {
    return WinActive(window)
}


window_exist(ByRef window) {
    return WinExist(window)
}

