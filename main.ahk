#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CopyPasteImage(imagePath)
{
	RunWait, "C:\Program Files\IrfanView\i_view64.exe" %A_WorkingDir%\%imagePath% /clipcopy /cmdexit
	Send, ^v
	Sleep, 500
	Send, {Enter}
}

Numpad0::
	Send, nu i dauni
	Send, {Enter}
return

Numpad1::
	Send, gg no chance
	Send, {Enter}
return

Numpad2::
	CopyPasteImage("lord.jpg")
return

Numpad3::
	CopyPasteImage("lord1.jpg")
return