F1::
   Suspend Permit

   If A_IsSuspended

      SoundPlay C:\Users\ttrncic\Operations\AutoHotkey\Hotkey sounds\buttonclickrelease.wav

   Else

      SoundPlay C:\Users\ttrncic\Operations\AutoHotkey\Hotkey sounds\buttonrollover.wav

   Suspend	

Return


; ==================<<<••••>>>==================


   ; •> Custom keyboard layout <•


!Left:: XButton1 ; the 'back' button on a mouse

!Right:: XButton2 ; the 'forward' button on a mouse

; =====================••••=====================

 ; Maps Alt + F4 

^Browser_Home:: Send !{F4}
^Esc:: Send !{F4}

; =====================••••=====================

 ; Maps Ctrl + F5 to F9

^3:: Send ^{F5}

; =====================••••=====================

 ; Maps Rename to Ctrl + backtick

^`:: Send {F2}{LCtrl down}		

; =====================••••=====================

 ; Maps Esc to browser home for B.O.W wireless keyboard

Browser_Home::Esc


; =====================••••=====================

 ; Flux brightness up and down 

!=::!PgUp

!-::!PgDn

; =====================••••=====================

 ; Flux brightness up and down 

![::Send {PgDn}

!]::Send {PgUp}

; =====================••••=====================

 ; Swaps LCtrl and LAlt

~LAlt Up::
{   
send {LAlt up}
send {LCtrl up}
Send {LWin up}
return
}
LAlt::LCtrl 
LCtrl::LAlt  

; =====================••••=====================

 ; Maps Ctrl+Win+Left & Right to Ctrl+y & Ctrl+x 


*^1::Send {LCtrl down}{LWin down}{Left down}{Left up}    

*^2::Send {LCtrl down}{LWin down}{Right down}{Right up}

; =====================••••=====================

;-Caption
^RButton::
WinSet, Style, -0x800000, A
return
;

;+Caption
^MButton::
WinSet, Style, +0x800000, A
return
;

; =====================••••=====================

 ; Swapping keys 

<+<!x:: Send {U+2022} ; Shift + LAlt + x = Bullet •
<+<!d:: Send {U+00A9} ; Shift + LAlt + d = Copyright ©
<+<!t:: Send {U+2122} ; Shift + LAlt + t = Trademark ™
; <+<!r:: Send {U+00AE} ; Shift + LAlt + r = Registered ®
<+<!c:: Send {U+2713} ; Shift + LAlt + c = Checkmark ✓
<+<!y:: Send {U+2714} ; Shift + LAlt + y = Heavy Checkmark ✔
<+<!Space:: Send {U+00a0} ; Shift + LAlt + Space = Empty space character

; Switch [ with { and ] with } while retaining tab feature in VS Code

:*?:[::
    SendInput, {Shift Down}`[{Shift up}
    return

:*?:]::
    SendInput, {Shift Down}`]{Shift Up}
    return

:*?:{::
    SendInput, `[
    return

:*?:}::
    SendInput, `]
    return

; Switch y and z
 
; z::y
; Z::Y
; y::z
; Y::Z

; =====================••••=====================

 ; Mapping F4 as a hotkey toggle for swapping Croatian keys
	; Playing a sound on toggle

F4::

 toggle := !toggle

	If (Toggle) { 

		SoundPlay C:\Users\ttrncic\Operations\AutoHotkey\Hotkey sounds\buttonclickrelease.wav

	}
	
	else { 

		SoundPlay C:\Users\ttrncic\Operations\AutoHotkey\Hotkey sounds\buttonrollover.wav

	}
	
	return

return
		; Toggling Croatian keys
#if toggle

	{::š
	+{::Š

	}::đ
	+}::Đ

	*;::č
	+;::Č

	'::ć
	+'::Ć

	\::ž
	+\::Ž

#if