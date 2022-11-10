#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, %A_ScriptDir%


GetProcessName(){
	MouseGetPos,,, OutputVarWin
	WinGet, title,ProcessName, ahk_id %OutputVarWin%
	return title
}

IsKeyDown:=False
SmallpoxTick:=2650

;헉븜
::qg::헤롱헤롱 쿨쿨 켁켁 븜냐냥 븜로롱 븜구리 븜미 

F5::
	Pause

; 두창 후딜캔슬
XButton1::

if (GetProcessName() = "QRSL.exe") {
	IsKeyDown:=true

	while IsKeyDown {
		startTime:=A_TickCount

		while IsKeyDown and A_TickCount-startTime <= SmallpoxTick
		{
			Click
			Sleep, 1
			if !IsKeyDown
				return
		}
		SendInput, {space}{Click} ; 두창 점프
	}
}
else
	SendInput, {XButton1}

return

XButton1 up::

	IsKeyDown:=false
	;ToolTip("두창 Off")

return

; 클라우디아 슈퍼점프
XButton2:: 

if (GetProcessName() = "QRSL.exe") {
	Click down
	Sleep,340
	Click up
	Sleep, 259
	SendInput, {3}
	Sleep, 50
	SendInput, {3}
}
else
	SendInput, {XButton2}

return