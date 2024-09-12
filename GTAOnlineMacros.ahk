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
SetBatchLines, -1
ListLines, Off
SetDefaultMouseSpeed, 0
SetKeyDelay, -1, -1
SetMouseDelay, 1
SetControlDelay, -1
SetWinDelay, -1 ; It is necessary for scripts that have the WinActivate etc commands

; Hotkey Definitions
EWO := "*F8"
EWOCodes := "F7"
BST := "*~$Insert"
Armour := "*~$ScrollLock"
FastSpawnStinger := "*~$J"
MCCEO := "*~$NumpadDiv"
CEOMC := "*~$NumpadMult"
Bride := "*~$NumpadAdd"
CEOGhost := "*~$NumpadEnter" 
Outfit := "*~$NumpadDot"
Ammo := "*~$NumpadSub"
Thermal := "*~$sc079"
ShowJobs := "*~$sc070"
Engine := "*~$]"
Weapon := "*~$["
RC := "*~$/"
Sanchez := "*~$."
Mech := "*~$Numpad1"
Mors := "*~$Numpad3"
Pegasus := "*~$Numpad7"
Lester := "*~$Numpad9"
; 4 := "4"
; 5 := "5"
; 6 := "6"
; 7 := "7"
; 8 := "8"
; 9 := "9"
;neko := "RCtrl"
;JoinJobs := "Insert"

; Hotkey Assignments
Hotkey, %EWO%, EWO
Hotkey, %EWOCodes%, EWOCodes
Hotkey, %BST%, BST
Hotkey, %Armour%, Armour
Hotkey, %FastSpawnStinger%, FastSpawnStinger
Hotkey, %MCCEO%, MCCEO
Hotkey, %CEOMC%, CEOMC
Hotkey, %Bride%, Bribe
Hotkey, %CEOGhost%, CEOGhost
Hotkey, %Outfit%, Outfit
Hotkey, %Ammo%, Ammo
Hotkey, %Thermal%, Thermal
Hotkey, %ShowJobs%, ShowJobs
Hotkey, %Engine%, Engine
Hotkey, %Weapon%, Weapon
Hotkey, %RC%, RC
Hotkey, %Sanchez%, Sanchez
Hotkey, %Mech%, Mech
Hotkey, %Mors%, Mors
Hotkey, %Pegasus%, Pegasus
Hotkey, %Lester%, Lester
; Hotkey, %4%, 4
; Hotkey, %5%, 5
; Hotkey, %6%, 6
; Hotkey, %7%, 7
; Hotkey, %8%, 8
; Hotkey, %9%, 9


Hotkey, *~$K, StrafeOff
Hotkey, *~$Y, StrafeOn
Hotkey, *~$C, Strafe, On

StrafeOn:
Hotkey, *~$f, Strafe, On
return

StrafeOff:
Hotkey, *~$f, Strafe, Off
return

Strafe:
Loop
{
SendInput, {Blind}{a Down}
Sleep, 30
Send, {Blind}{d Down}
SendInput, {Blind}{a Up}
Sleep, 30
Send, {Blind}{d Up}
if !GetKeyState("f", "P")
Break
}
return


; Control Hotkeys
F1::Suspend, Toggle
F2::Reload

; Right-click Function
~RButton::
    Sleep, 500
    Send, {LCtrl}
    KeyWait, RButton
    Send, {LCtrl}
return

; Hotkey Functions
EWO:
    WinActivate, GTAHaX.exe, , , PID
    WinWait, ahk_pid %PID%
    SendInput, {R Down}{0 Down}
    ControlClick, Button1
    Send, {LButton Up}{R Up}{0 Up}
    Process, priority, , High
return

EWOCodes:
    Process, Close, GTAHaX.exe
    ;Process, Close, D:\GTAO\GTAHaX\GTAHaX.exe
    Run, D:\GTAO\GTAHaX\GTAHaX.exe, , min, PID
    WinWait, ahk_pid %PID%
    ControlSend, Edit1, {Right}{Backspace}1574582
    ControlSend, Edit2, {Right}{Backspace}6
    ControlSend, Edit8, {Right}{Backspace}10{Backspace}
    Process, priority, , High
return

BST:
SendInput, {Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{Enter Down}{Down 3}{Down Down}
SendInput, {Enter Up}
Send, {Blind}{Down Up}{Enter Down}{WheelDown Down}{Enter Up}
SendInput, {WheelDown Up}
Sleep, 150
return

Armour:
SendInput, {Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{Enter Down}{Up 2}{Up Down}
SendInput, {Enter Up} 
Send, {Blind}{Up Up}{Enter Down}{Down 2}{WheelDown Down}{Enter Up}
SendInput, {WheelDown Up}
Sleep, 150
return

FastSpawnStinger:
Send, {Blind}{F6 Down}{LButton Down}
Sleep, 310 ; 310 if SetMouseDelay, 1
Send, {Blind}{LButton Up}{F6 Up}
Sleep, 80
Send, {Esc}{P}
return

MCCEO:
    Send {m}{enter}{up}{enter}
    Sleep 120
    Send {m}{down}{enter 3}
return

CEOMC:
    Send {m}{enter}{up}{enter}
    Sleep 120
    Send {m}{down}{enter}{down}{enter 2}
return

Bribe:
SendInput, {Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{Enter Down}{Up 2}{Up Down}{Enter Up}
SendInput, {Blind}{Up Up}
Send, {Blind}{Enter Down}{Up}{Up Down}{Enter Up}
SendInput, {Blind}{Up Up}
return

CEOGhost:
SendInput, {LButton Up}{Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}
Loop 2
{
Send, {Enter Down}{Up 2}{WheelUp Down}{Enter Up}
SendInput, {WheelUp Up}
}
return

Outfit:
    Send {m}{down 5}{enter}{down 3}
return

Ammo:
BlockInput, MouseMove
SendInput, {Blind}{Down Down}{m Down}
Send, {Blind}{m Up}{Enter Down}{LButton Down}{Down Up}{Down}
DllCall("SetCursorPos", int, 435, int, 315)
Send, {Blind}{LButton Up}{Enter Up}{Enter 2}{Enter Down}
SendInput, {Blind}{WheelDown Down}
Send, {Blind}{Enter Up}{m}{WheelDown Up}
BlockInput, MouseMoveOff
Sleep, 150
return

Thermal:
BlockInput, MouseMove
SendInput, {Blind}{Down Down}{m Down}
Send, {Blind}{m Up}{Enter Down}{LButton Down}{Down Up}
DllCall("SetCursorPos", int, 435, int, 350)
Send, {Blind}{LButton Up}{Enter Up}{Enter Down}{Down}
SendInput, {Blind}{MButton Down}{Enter Up}
Send, {Blind}{m}{MButton Up}
BlockInput, MouseMoveOff
Sleep, 150
return

Engine:
    Send {m}{down 2}{enter}{up}{enter}{up 3}{enter 2}{m}
return

Weapon:
    Send {m}{down 4}{enter}{up}{enter}{m}
return

RC:
SendInput, {Blind}{Enter Down}{m Down}{WheelDown Down}
Send, {Blind}{Down Down}{m Up}{Down Up}{WheelDown Up}
SendInput, {Blind}{Enter Up}
Send, {Blind}{Enter Down}{Up 2}{WheelUp}{Enter Up}{Enter Down}{Down Down}{Down Up}
return

Sanchez:
    Send {m}{enter}{up 2}{enter}{up 4}{enter}
return

CEOCar:
    Send {m}{down 2}{enter}
return

ShowJobs:
SendInput, {Blind}{WheelUp Down}{Enter Down}{m Down}
Send, {Blind}{m Up}{Up 2}{WheelUp Up}
SendInput, {Enter Up}
Send, {Blind}{Enter Down}{Up}
SendInput, {Enter Up}
Send, {Blind}{Down}{WheelDown Down}{Enter Down}
SendInput, {Blind}{WheelDown Up}
Send, {Blind}{Enter Up}{Right Down}{m}{Right Up}
Sleep, 150
return

JoinJobs:
    Send {p}
    Sleep 100
    Send {right}
    Sleep 440
    Send {enter}
    Sleep 40
    Send {enter}
    Sleep 40
    Send {enter}
    Sleep 40
    Send {enter}
    Sleep 40
    Send {enter}
return

Mech:
    Send {MButton}
    Sleep 500
    Loop, 3 {
        Send {wheelUp}
        Sleep 50
    }
    Send {enter}
    Sleep 80
    Loop, 3 {
        Send {wheelUp}
        Sleep 50
    }
    Send {enter}
return

Mors:
    Send {MButton}
    Sleep 500
    Loop, 2 {
        Send {wheelUp}
        Sleep 50
    }
    Send {enter}
    Sleep 80
    Loop, 2 {
        Send {wheelUp}
        Sleep 50
    }
    Send {enter}
return

Pegasus:
    Send {up}
    Sleep 500
    Loop, 2 {
        Send {wheelUp}
        Sleep 50
    }
    Send {enter}
    Sleep 150
    Send {wheelup}
    Sleep 80
    Send {enter}
return

Lester:
    Send {MButton}
    Sleep 500
    Loop, 2 {
        Send {wheelUp}
        Sleep 50
    }
    Send {enter}
    Sleep 80
    Loop, 4 {
        Send {wheelup}
        Sleep 50
    }
    Send {enter}
return


; 4:
; Send, {Blind}{4 Down}{Tab}
; SendInput, {Blind}{4 Up}
; return

; 5:
; Send, {Blind}{5 Down}{Tab}
; SendInput, {Blind}{5 Up}
; return

; 6:
; Send, {Blind}{6 Down}{Tab}
; SendInput, {Blind}{6 Up}
; return

; 7:
; Send, {Blind}{7 Down}{Tab}
; SendInput, {Blind}{7 Up}
; return

; 8:
; Send, {Blind}{8 Down}{Tab}
; SendInput, {Blind}{8 Up}
; return

; 9:
; Send, {Blind}{9 Down}{Tab}
; SendInput, {Blind}{9 Up}

; Commented out loop
/*
Shift & Alt::
Loop, 100
{
    Send {Numpad5}
    Sleep 30005
    Send {enter}
    Sleep 50000
    Send {Numpad8}
    Sleep 3000
    Send {Numpad5}
    Sleep 3000
    Send {enter}
    Sleep 95000
    Send {Numpad2}
    Sleep 3000
}
*/

; Reconnect
Break:: ; RightShift+Insert
if (toggle := !toggle) {	
Process_Suspend("Gta5.exe")
Process_Suspend(PID_or_Name){
    PID := (InStr(PID_or_Name,".")) ? ProcExist(PID_or_Name) : PID_or_Name
    h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    If !h   
        Return -1
    DllCall("ntdll.dll\NtSuspendProcess", "Int", h)
    DllCall("CloseHandle", "Int", h)
}
Sleep 9000 ; 8000 Main
Process_Resume("Gta5.exe")
Process_Resume(PID_or_Name){
    PID := (InStr(PID_or_Name,".")) ? ProcExist(PID_or_Name) : PID_or_Name
    h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    If !h   
        Return -1
    DllCall("ntdll.dll\NtResumeProcess", "Int", h)
    DllCall("CloseHandle", "Int", h)
}
ProcExist(PID_or_Name=""){
    Process, Exist, % (PID_or_Name="") ? DllCall("GetCurrentProcessID") : PID_or_Name
    Return Errorlevel
}
}
Run, GTAOnlineMacros3.ahk, D:\GTAO\ ; Reload Script
return
