; Keep alive if idle time >= 1 minute
#include <Misc.au3>
#include <MsgBoxConstants.au3>
#include <Timers.au3>

Local $hDLL = DllOpen("user32.dll")
Local $time = 60000
Local $scriptTitle = "Keepalive AU3 Script Message"
Local $ctrl = "11"
Local $alt = "12"
Local $esc = "1B"

MsgBox($MB_SYSTEMMODAL, $scriptTitle, "Script initiated. Press <CTRL> + <ALT> + <ESC> to terminate script.")

While 1
  ; check to see if idle for 1 minute, move mouse to 'random' (x,y)
  If _Timer_GetIdleTime() > $time Then
    MouseMove(Random(100, 500, 1), Random(100, 500, 1), 50)
  EndIf
  
  ; check for escape sequence to terminate script
  ; escape sequence is CTRL + ALT + ESC
  If _IsPressed($ctrl, $hDLL) And _IsPressed($alt, $hDLL) And _IsPressed($esc, $hDLL) Then
    MsgBox($MB_SYSTEMMODAL, $scriptTitle, "Script exit sequence detected: <CTRL> + <ALT> + <ESC>. Script terminated...")
    ExitLoop
   EndIf
WEnd

DllClose($hDLL)