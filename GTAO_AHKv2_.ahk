 #Requires AutoHotkey v2.0

 ; Basic settings
 SetWorkingDir A_ScriptDir

 ; Window specific hotkeys
 #HotIf WinActive("ahk_class grcWindowGrand Theft Auto V")
 #HotIf WinActive("ahk_class sgaWindow")
 #HotIf WinActive("ahk_exe GTA5_Enhanced.exe")

 ; Performance settings
 #SingleInstance Force
 ProcessSetPriority "High"
 if ProcessExist("gta5.exe")
     ProcessSetPriority "High", "gta5.exe"

 ; Performance optimizations
 A_MaxHotkeysPerInterval := 99000000
 A_HotkeyInterval := 99000000
 Thread "Priority", 100

 ; Speed optimizations
 SetKeyDelay -1, -1
 SetMouseDelay 1
 SetControlDelay -1
 SetWinDelay -1

 ; Hotkey definitions (Using direct hotkey syntax in v2)
 *~$Insert:: BST()
 *~$ScrollLock:: Armor()
 *~$NumpadDiv:: MCCEO()
 *~$NumpadMult:: CEOMC()
 *~$NumpadAdd:: Bribe()
 *~$NumpadEnter:: CEOGhost()
 *~$NumpadDot:: Outfit()
 *~$NumpadSub:: Ammo()
 *~$sc079:: Thermal()
 *~$sc070:: ShowJobs()
 *~$]:: Engine()
 *~$[:: Weapon()
 *~$/:: RC()
 *~$.:: Sanchez()
 *~$RCtrl:: Sparrow()
 *~$Numpad1:: Mech()
 *~$Numpad3:: Mors()
 *~$Numpad7:: Pegasus()
 *~$Numpad9:: Lester()
 ;  *4:: Four()
 ;  *5:: Five()
 *6:: Six()
 *7:: Seven()
 *8:: Eight()
 *9:: Nine()

 ; Control Hotkeys
 global suspended := false
 #SuspendExempt  ; この下のホットキーはSuspendの影響を受けない
 F1::
 {
     Suspend
     ToolTip(A_IsSuspended ? "スクリプト一時停止" : "スクリプト再開")
     SetTimer(() => ToolTip(), -1000)
 }

 F2:: Reload()

 ; Right-click Function
 #SingleInstance Force

 ~*RButton::
 {
     if !KeyWait("RButton", "T5") ; 5秒待機、途中で離したら終了
     {
         Send("{LCtrl down}")
         KeyWait("RButton") ; RButton を離すまで待つ
         Send("{LCtrl up}")
     }
 }

 ; Hotkey Functions
 BST() {
     SendInput("{m}{enter}{up 3}{enter}{down}{Enter}")
 }

 Armor() {
     SendInput("{Enter down}{m down}")
     Send("{Blind}{m up}{Enter up}{Enter down}{Up 2}{Up down}")
     SendInput("{Enter up}")
     Send("{Blind}{Up up}{Enter down}{Down 2}{WheelDown down}{Enter up}")
     SendInput("{WheelDown up}")
     Sleep(150)
 }

 MCCEO() {
     Send("{m}{enter}{up}{enter}")
     Sleep(120)
     Send("{m}{down}{enter 3}")
 }

 CEOMC() {
     Send("{m}{enter}{up}{enter}")
     Sleep(120)
     Send("{m}{down}{enter}{down}{enter 2}")
 }

 Bribe() {
     SendInput("{m}{enter}{up 3}{enter}{up 2}{Enter}")
 }

 CEOGhost() {
     SendInput("{m}{enter}{up 3}{enter}{up 3}{Enter}")
 }

 Outfit() {
     Send("{m}{down 5}{enter}{down 5}")
 }

 ;  Ammo() {
 ;      SendInput("{Blind}{Down Down}{m Down}")
 ;      Send("{Blind}{m Up}{Enter Down}{LButton Down}{Down Up}{Down}")
 ;      DllCall("SetCursorPos", "int", 435, "int", 315)
 ;      Send("{Blind}{LButton Up}{Enter Up}{Enter}")
 ;      Sleep(80)
 ;      Send("{Blind}{Enter}{Enter Down}")
 ;      SendInput("{Blind}{WheelDown}")
 ;      Send("{Blind}{Enter Up}{m}")
 ;      Sleep(150)
 ;  }

 Ammo() {
     BlockInput(true)
     SendInput("{m down}{m up}")
     Sleep(50)
     SendInput("{Blind}{Down down}{Enter down}{LButton down}{Down up}{Down}")
     DllCall("SetCursorPos", "Int", 435, "Int", 315)
     SendInput("{Blind}{LButton up}{Enter up}{Enter}")
     BlockInput(false)
     Sleep(80)
     Send("{Enter}{Down}{Enter}{m}")
     Sleep(150)
 }
 ;  Ammo() {
 ;      BlockInput(true)
 ;      SendInput("{Blind}{Down down}{m down}{m up}{Enter down}{LButton down}{Down up}{Down}")
 ;      DllCall("SetCursorPos", "Int", 435, "Int", 315)
 ;      SendInput("{Blind}{LButton up}{Enter up}{Enter}")
 ;      BlockInput(false)
 ;      Sleep(80)
 ;      Send("{Enter}{Down}{Enter}{m}")
 ;      Sleep(150)
 ;  }

 Thermal() {
     BlockInput(true)
     SendInput("{Blind}{Down down}{m down}")
     Send("{Blind}{m up}{Enter down}{LButton down}{Down up}")
     DllCall("SetCursorPos", "Int", 435, "Int", 350)
     Send("{Blind}{LButton up}{Enter up}{Enter down}")
     BlockInput(false)
     Sleep(70)
     Send("{Down}{Enter}{Space}{m}")
 }

 Engine() {
     Send("{m}{down 2}{enter}{up}{enter}{up 3}{enter 2}{m}")
 }

 Weapon() {
     Send("{m}{down 4}{enter}{up}{enter}{m}")
 }

 RC() {
     SendInput("{Blind}{Enter down}{m down}{WheelDown down}")
     Send("{Blind}{Down down}{m up}{Down up}{WheelDown up}")
     SendInput("{Blind}{Enter up}")
     Send("{Blind}{Enter down}{Up 3}{WheelUp}{Enter up}{Enter down}{Down down}{Down up}")
 }

 Sanchez() {
     Send("{m}{enter}{up 2}{enter}{up 4}{enter}")
 }

 Sparrow() {
     Send("{m}{down 3}{enter}{up 2}{enter}{down}{enter}")
 }

 ShowJobs() {
     SendInput("{Blind}{WheelUp down}{Enter down}{m down}")
     Send("{Blind}{m up}{Up 2}{WheelUp up}")
     SendInput("{Enter up}")
     Send("{Blind}{Enter down}{Up}")
     SendInput("{Enter up}")
     Send("{Blind}{Down}{WheelDown down}{Enter down}")
     SendInput("{Blind}{WheelDown up}")
     Send("{Blind}{Enter up}{Right down}{m}{Right up}")
     Sleep(150)
 }

 Mech() {
     Send("{up}")
     Sleep(500)
     loop 2 {
         Send("{wheelUp}")
         Sleep(50)
     }
     Send("{enter}")
     Sleep(80)
     loop 3 {
         Send("{wheelUp}")
         Sleep(50)
     }
     Send("{enter}")
 }

 Mors() {
     Send("{up}")
     Sleep(500)
     loop 2 {
         Send("{wheelUp}")
         Sleep(50)
     }
     Send("{enter}")
     Sleep(80)
     loop 2 {
         Send("{wheelUp}")
         Sleep(50)
     }
     Send("{enter}")
 }

 Pegasus() {
     Send("{up}")
     Sleep(500)
     loop 2 {
         Send("{wheelUp}")
         Sleep(50)
     }
     Send("{enter}")
     Sleep(80)
     Send("{wheelUp}")
     Sleep(50)
     Send("{enter}")
 }

 Lester() {
     Send("{up}")
     Sleep(500)
     loop 2 {
         Send("{wheelUp}")
         Sleep(50)
     }
     Send("{enter}")
     Sleep(80)
     loop 4 {
         Send("{wheelUp}")
         Sleep(50)
     }
     Send("{enter}")
 }

 ;  Four() {
 ;      Send("{Blind}{4 down}{Tab}")
 ;      SendInput("{Blind}{4 up}")
 ;  }

 ;  Five() {
 ;      Send("{Blind}{5 down}{Tab}")
 ;      SendInput("{Blind}{5 up}")
 ;  }

 Six() {
     Send("{Blind}{6 down}{Tab}")
     SendInput("{Blind}{6 up}")
 }

 Seven() {
     Send("{Blind}{7 down}{Tab}")
     SendInput("{Blind}{7 up}")
 }

 Eight() {
     Send("{Blind}{8 down}{Tab}")
     SendInput("{Blind}{8 up}")
 }

 Nine() {
     Send("{Blind}{9 down}{Tab}")
     SendInput("{Blind}{9 up}")
 }
