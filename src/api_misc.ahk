ini_read(ByRef ini_file, ByRef ini_section, ByRef ini_key, ByRef ini_default := "error")
{
    IniRead, output_var, %ini_file%, %ini_section%, %ini_key%, %ini_default%
    return %output_var%
}

ini_read_array(ByRef ini_file, ByRef ini_section, ByRef ini_key, ByRef ini_default := "error") {
    IniRead, output_str, %ini_file%, %ini_section%, %ini_key%, %ini_default%
    arr := StrSplit(output_str, ", ")
    return %arr%
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

send_active_window(ByRef key, ByRef window) {
    if !window_active(window)
        return

    send(key)
}

sleep(ByRef t) {
    Sleep, %t%
}

send_random_key(byRef key_array) {
    send(random_array_element(key_array))
}

control_send_random_key_window(byRef key_array, ByRef window) {
    control_send(random_array_element(key_array), window)
}

random_array_element(ByRef array) {
    return array[random(1, array.MaxIndex())]
}

control_send_random_key_active_window(byRef key_array, ByRef window) {
    if window_active(window)
        return control_send_random_key_window(key_array, window)
}

control_send_random_key_inactive_window(byRef key_array, ByRef window) {
    if !window_active(window)
        return control_send_random_key_window(key_array, window)
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

