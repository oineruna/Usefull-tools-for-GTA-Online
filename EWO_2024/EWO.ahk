; By Sparrow

#NoEnv
SetWorkingDir %A_ScriptDir%
#IfWinActive ahk_class grcWindow
#SingleInstance, force
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#MaxThreadsBuffer On
#Persistent
#KeyHistory 0
Process, Priority, , High
Process, Priority, gta5.exe, High
ListLines, Off
SetDefaultMouseSpeed, 0
SetBatchLines, -1
SetKeyDelay, -1 ,-1 ; for high fps
SetMouseDelay, 1
SetStoreCapslockMode, Off

; You can change the key in "" to which you want

Ewo := "*n"
;Ewo := "*sc29"
EwoCodes := "RShift" ; RightShift

Hotkey, %Ewo%, Ewo
Hotkey, %EwoCodes%, EwoCodes
return

; You need to specify the path to the folder where the macro will be located, GTAHax and the macro must be in the same folder
; When you turn on the macro, go into the game and turn on windowed mode via Alt+Enter
; Then run the macro on the RightShift+= key combination
; And press the ` key and do an ewo once in windowed mode, after which you can turn on the full screen
; If the ewo does not work, press the RightShift+F12 key combination, after which GTAHax will close and repeat all of the above
; If Alt Tab occurs after pressing ewo, close the script and run it again, and repeat the whole process, or just press Alt+Enter several times

>^F12::  ; RightControl+F12 Reload Script
Run, EWO.ahk
Process, Close, C:\Users\Admin\Downloads\EWO_2024\GAHax.exe
End:: Suspend ; Pause Script
return

; Change the 0 key to the one you have specified in the game "Toggle Special Ability"
; Or put 0 on the second key in the game

Ewo:
{
WinActivate, GTAHax.exe, , , PID
WinWait, ahk_pid %PID%
Send, {LButton Down}
SendInput, {R Down}{0 Down}
ControlClick, Button1
Send, {LButton Up}{R Up}{0 Up}
Process, priority, , High
}
return

EwoCodes:
{
Run, GTAHax.exe, , min, PID
WinWait, ahk_pid %PID%
ControlSend, Edit1, {Right}{Backspace}1574582
ControlSend, Edit2, {Right}{Backspace}6
ControlSend, Edit8, {Right}{Backspace}10{Backspace}
Process, priority, , High
}
return
