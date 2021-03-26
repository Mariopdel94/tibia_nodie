#include api_misc.ahk

run_tibia() {

    SetTitleMatchMode, 1

    if !window_exist("Tibia")
    {
        SetTitleMatchMode, 3
        RunWait, Tibia.exe, C:\Users\user\AppData\Local\Tibia\
        sleep(random_k(9, 12))
    }

    SetTitleMatchMode, 3
}


logged_in() {

    SetTitleMatchMode, 1

    logged := window_exist("Tibia - ")

    SetTitleMatchMode, 3

    return logged
}

wait_logged_in() {


    tries := 10
    i := 0

    while (i < tries)
    {

        if logged_in()
            return true

        i := i + 1
        sleep(random_k(1, 2))
    }

    return false
}