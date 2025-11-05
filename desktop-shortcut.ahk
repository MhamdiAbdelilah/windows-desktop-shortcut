; AutoHotkey v2 compatible version
; Requires VirtualDesktopAccessor.dll in the same folder as this script
; Declaration
DllCall("LoadLibrary", "Str", A_ScriptDir "\VirtualDesktopAccessor.dll")
firefox := "C:\Program Files\Mozilla Firefox\firefox.exe"

; Switch Desktop 
#1::GoToDesktop(0)
#2::GoToDesktop(1)
#3::GoToDesktop(2)
#4::GoToDesktop(3)
#5::GoToDesktop(4)
#6::GoToDesktop(5)
#7::GoToDesktop(6)
#8::GoToDesktop(7)
#9::GoToDesktop(8)
#0::GoToDesktop(9)

; shortcut to open programe
#Enter::openApp("powershell")
#w::openApp(firefox)

; fonctions
GoToDesktop(num) {
    existingCount := DllCall("VirtualDesktopAccessor\GetDesktopCount", "Int")

    ; Create new desktops until the target index exists
    while (existingCount <= num) {
        DllCall("VirtualDesktopAccessor\CreateDesktop")
        existingCount++
    }

    ; Switch to target desktop
    DllCall("VirtualDesktopAccessor\GoToDesktopNumber", "Int", num)
}
openApp(app){
    ; open the targer app using the path.
    Run app

}
