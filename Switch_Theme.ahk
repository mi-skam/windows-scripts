#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


!+j::
; Get the current dark mode settings and save it to themeNow
RegRead, themeNow, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme
; Toggle the value between 0 and 1 by substracting the sum of 0 and 1 with the current value
; (0 + 1) - 0 => 1
; (0 + 1) - 1 => 0
themeNow := 1 - themeNow

RegWrite REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme,  %themeNow%
RegWrite REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, %themeNow%