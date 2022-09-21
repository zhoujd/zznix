; Disable stand-alone Alt key press: make Alt purely a modifier key.
; The If statement is required to get Alt+Shift work as expected. If it's not
; there, only [Press Alt], [Press Shift], [Release Shift], [Release Alt] would
; trigger the input language change. The other, more common sequence would be
; [Press Alt], [Press Shift], [Release  Alt], [Release Shift], but AutoHotKey
; would block it before it reaches Windows if the "#If" isn't there.

; Remap Capslock -> RControl
Capslock::RControl

; Remap RControl -> Rwin
RControl::RWin

#If not GetKeyState("LShift", "P")
~LAlt::
    KeyWait, LAlt
return

; Make Alt+Something still work
~LAlt Up::
    Send, {LAlt Up}
return

~RAlt::
    KeyWait, RAlt
return

; Make Alt+Something still work
~RAlt Up::
    Send, {RAlt Up}
return

; Disable Left Windows Key
LWin::Return

; Disable Right Windows Key
RWin::Return
