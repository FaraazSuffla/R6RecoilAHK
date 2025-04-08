; ----------- CONFIG -----------
EnableRCS := true
RecoilControlMode := "High" ; Options: Low, Medium, High, Ultra, Insanity, Custom
RcCustomStrength := 7 ; Only used if RecoilControlMode is "Custom"
RequireToggle := true
ToggleKey := "="
DelayRate := 5 ; in ms

; ----------- SENSITIVITY SETTINGS (based on your config) -----------
BaseSensitivity := 1.0 ; MouseSensitivity=50 * 0.02
ADSMultiplier := 0.7  ; ADSMouseSensitivity1x=35 * 0.02

; Horizontal and Vertical compensation (base values for High mode)
VerticalBase := 1.4  ; Base vertical compensation factor
HorizontalBase := 0.4  ; Base horizontal sway correction

; ----------- PRESETS -----------
if (RecoilControlMode = "Low") {
    VerticalStrength := 0.6
    HorizontalStrength := 0.2
} else if (RecoilControlMode = "Medium") {
    VerticalStrength := 1.0
    HorizontalStrength := 0.3
} else if (RecoilControlMode = "High") {
    VerticalStrength := 1.4
    HorizontalStrength := 0.4
} else if (RecoilControlMode = "Ultra") {
    VerticalStrength := 1.8
    HorizontalStrength := 0.5
} else if (RecoilControlMode = "Insanity") {
    VerticalStrength := 2.2
    HorizontalStrength := 0.6
} else if (RecoilControlMode = "Custom") {
    VerticalStrength := RcCustomStrength
    HorizontalStrength := RcCustomStrength / 3
} else {
    VerticalStrength := 1.0
    HorizontalStrength := 0.3
}

; ----------- GLOBALS -----------
isActive := false
horizontalDirection := 1  ; alternates left/right

; ----------- TOGGLE HANDLING -----------
SetTimer, WatchToggle, 100
return

WatchToggle:
if (RequireToggle) {
    isActive := GetKeyState(ToggleKey, "T")
} else {
    isActive := true
}
return

; ----------- MAIN SCRIPT -----------
~*RButton::
while GetKeyState("RButton", "P") {
    if (EnableRCS and isActive) {
        if GetKeyState("LButton", "P") {
            ; Apply scaled recoil compensation
            vertMove := VerticalStrength * ADSMultiplier * 10
            horizMove := HorizontalStrength * ADSMultiplier * 10 * horizontalDirection
            DllCall("mouse_event", "UInt", 0x01, "Int", horizMove, "Int", vertMove, "UInt", 0, "UPtr", 0)

            ; Alternate horizontal direction
            horizontalDirection *= -1

            Sleep, DelayRate
        }
    }
}
return
