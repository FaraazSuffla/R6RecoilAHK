; ----------- CONFIG -----------
#NoEnv
#SingleInstance Force
SendMode Input
SetBatchLines -1

EnableRCS := true
ToggleKey := "="  ; Press = to toggle recoil
DelayRate := 5    ; ms delay between movements
ADSMultiplier := 0.7

; ----------- PRESETS -----------
RecoilPresets := Object()

; ----------- DEFENDING -----------
RecoilPresets["Defending"] := Object()

RecoilPresets["Defending"]["Alibi"] := Object()
RecoilPresets["Defending"]["Alibi"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Aruni"] := Object()
RecoilPresets["Defending"]["Aruni"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Azami"] := Object()
RecoilPresets["Defending"]["Azami"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Bandit"] := Object()
RecoilPresets["Defending"]["Bandit"]["Default"] := [4, 1, 0]

RecoilPresets["Defending"]["Castle"] := Object()
RecoilPresets["Defending"]["Castle"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Caveira"] := Object()
RecoilPresets["Defending"]["Caveira"]["PISTOL"] := [6, 1, 0]
RecoilPresets["Defending"]["Caveira"]["M12"] := [1, 4, 0]

RecoilPresets["Defending"]["Clash"] := Object()
RecoilPresets["Defending"]["Clash"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Doc"] := Object()
RecoilPresets["Defending"]["Doc"]["Default"] := [4, 1, 0]

RecoilPresets["Defending"]["Echo"] := Object()
RecoilPresets["Defending"]["Echo"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Ela"] := Object()
RecoilPresets["Defending"]["Ela"]["Default"] := [3, 1, 0]

RecoilPresets["Defending"]["Frost"] := Object()
RecoilPresets["Defending"]["Frost"]["9mm-C1"] := [9, 0, 0]

RecoilPresets["Defending"]["Goyo"] := Object()
RecoilPresets["Defending"]["Goyo"]["Vector.45"] := [21, -0.25, 0]

RecoilPresets["Defending"]["Jager"] := Object()
RecoilPresets["Defending"]["Jager"]["Default"] := [4, 1, 0]

RecoilPresets["Defending"]["Kaid"] := Object()
RecoilPresets["Defending"]["Kaid"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Kapkan"] := Object()
RecoilPresets["Defending"]["Kapkan"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Lesion"] := Object()
RecoilPresets["Defending"]["Lesion"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Maestro"] := Object()
RecoilPresets["Defending"]["Maestro"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Melusi"] := Object()
RecoilPresets["Defending"]["Melusi"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Mira"] := Object()
RecoilPresets["Defending"]["Mira"]["Vector.45"] := [17, -0.25, 0]

RecoilPresets["Defending"]["Mozzie"] := Object()
RecoilPresets["Defending"]["Mozzie"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Mute"] := Object()
RecoilPresets["Defending"]["Mute"]["SMG-11"] := [22, -0.05, 0]

RecoilPresets["Defending"]["Pulse"] := Object()
RecoilPresets["Defending"]["Pulse"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Rook"] := Object()
RecoilPresets["Defending"]["Rook"]["Default"] := [4, 1, 0]

RecoilPresets["Defending"]["Smoke"] := Object()
RecoilPresets["Defending"]["Smoke"]["SMG-11"] := [22, -0.05, 0]

RecoilPresets["Defending"]["Solis"] := Object()
RecoilPresets["Defending"]["Solis"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Tachanka"] := Object()
RecoilPresets["Defending"]["Tachanka"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Thunderbird"] := Object()
RecoilPresets["Defending"]["Thunderbird"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Valkyrie"] := Object()
RecoilPresets["Defending"]["Valkyrie"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Vigil"] := Object()
RecoilPresets["Defending"]["Vigil"]["SMG-12"] := [22, 5, 0]

RecoilPresets["Defending"]["Wamai"] := Object()
RecoilPresets["Defending"]["Wamai"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Warden"] := Object()
RecoilPresets["Defending"]["Warden"]["Default"] := [5, 1, 0]

; Attacking Operators
RecoilPresets["Attacking"] := Object()

RecoilPresets["Attacking"]["Ash"] := Object()
RecoilPresets["Attacking"]["Ash"]["R4-C"] := [18, -1.2, 0]

RecoilPresets["Attacking"]["Blackbeard"] := Object()
RecoilPresets["Attacking"]["Blackbeard"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Buck"] := Object()
RecoilPresets["Attacking"]["Buck"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Capitao"] := Object()
RecoilPresets["Attacking"]["Capitao"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Dokkaebi"] := Object()
RecoilPresets["Attacking"]["Dokkaebi"]["SMG-12"] := [22, 5, 0]

RecoilPresets["Attacking"]["Finka"] := Object()
RecoilPresets["Attacking"]["Finka"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Flores"] := Object()
RecoilPresets["Attacking"]["Flores"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Glaz"] := Object()
RecoilPresets["Attacking"]["Glaz"]["Default"] := [4, 1, 0]

RecoilPresets["Attacking"]["Gridlock"] := Object()
RecoilPresets["Attacking"]["Gridlock"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Hibana"] := Object()
RecoilPresets["Attacking"]["Hibana"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Iana"] := Object()
RecoilPresets["Attacking"]["Iana"]["Default"] := [9, 1, 0]

RecoilPresets["Attacking"]["IQ"] := Object()
RecoilPresets["Attacking"]["IQ"]["Default"] := [4, 1, 0]

RecoilPresets["Attacking"]["Jackal"] := Object()
RecoilPresets["Attacking"]["Jackal"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Kali"] := Object()
RecoilPresets["Attacking"]["Kali"]["Default"] := [9, 1, 0]

RecoilPresets["Attacking"]["Lion"] := Object()
RecoilPresets["Attacking"]["Lion"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Maverick"] := Object()
RecoilPresets["Attacking"]["Maverick"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Montagne"] := Object()
RecoilPresets["Attacking"]["Montagne"]["Default"] := [9, 1, 0]

RecoilPresets["Attacking"]["Nokk"] := Object()
RecoilPresets["Attacking"]["Nokk"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Nomad"] := Object()
RecoilPresets["Attacking"]["Nomad"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Osa"] := Object()
RecoilPresets["Attacking"]["Osa"]["Default"] := [9, 1, 0]

RecoilPresets["Attacking"]["Ram"] := Object()
RecoilPresets["Attacking"]["Ram"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Recruits"] := Object()
RecoilPresets["Attacking"]["Recruits"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Sledge"] := Object()
RecoilPresets["Attacking"]["Sledge"]["Default"] := [4, 1, 0]

RecoilPresets["Attacking"]["Sens"] := Object()
RecoilPresets["Attacking"]["Sens"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Thatcher"] := Object()
RecoilPresets["Attacking"]["Thatcher"]["Default"] := [4, 1, 0]

RecoilPresets["Attacking"]["Thermite"] := Object()
RecoilPresets["Attacking"]["Thermite"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Twitch"] := Object()
RecoilPresets["Attacking"]["Twitch"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Ying"] := Object()
RecoilPresets["Attacking"]["Ying"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Zero"] := Object()
RecoilPresets["Attacking"]["Zero"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Zofia"] := Object()
RecoilPresets["Attacking"]["Zofia"]["Default"] := [5, 1, 0]

CurrentSide := "Defending"
CurrentOperator := "Rook"
CurrentWeapon := "P9"
isActive := false
horizontalDirection := 1


; ----------- GUI -----------
Gui, Font, s10, Segoe UI
Gui, Add, Text, x10 y10 w120 h20, Select Side:
Gui, Add, DropDownList, x10 y30 w120 vSelectedSide gUpdateSide Choose1,Defending|Attacking

Gui, Add, Text, x10 y60 w120 h20, Select Operator:
Gui, Add, DropDownList, x10 y80 w120 vSelectedOperator gUpdateOperator

Gui, Add, Text, x10 y110 w120 h20, Select Weapon:
Gui, Add, DropDownList, x10 y130 w120 vSelectedWeapon

Gui, Add, Button, x10 y160 w120 h30 gApplyPreset, Apply Settings
Gui, Add, Text, x10 y200 w120 h20 vStatusText, Status: INACTIVE
Gui, Add, Text, x10 y220 w120 h20 vPresetText, Preset: %CurrentSide% - %CurrentOperator% - %CurrentWeapon%
Gui, Show, w140 h250, Recoil Control

Gosub, UpdateSide

; ----------- HOTKEY REGISTER -----------
Hotkey, % "*" ToggleKey, ToggleRecoil, On

return

; ----------- GUI FUNCTIONS -----------
UpdateSide:
    Gui, Submit, NoHide
    CurrentSide := SelectedSide
    GuiControl,, SelectedOperator,|
    for operator, _ in RecoilPresets[CurrentSide]
        GuiControl,, SelectedOperator, %operator%
    for operator, _ in RecoilPresets[CurrentSide]
        break
    CurrentOperator := operator
    GuiControl, ChooseString, SelectedOperator, %CurrentOperator%
    Gosub, UpdateOperator
return

UpdateOperator:
    Gui, Submit, NoHide
    CurrentOperator := SelectedOperator
    GuiControl,, SelectedWeapon,|
    for weapon, _ in RecoilPresets[CurrentSide][CurrentOperator]
        GuiControl,, SelectedWeapon, %weapon%
    for weapon, _ in RecoilPresets[CurrentSide][CurrentOperator]
        break
    CurrentWeapon := weapon
    GuiControl, ChooseString, SelectedWeapon, %CurrentWeapon%
return

ApplyPreset:
    Gui, Submit, NoHide
    CurrentSide := SelectedSide
    CurrentOperator := SelectedOperator
    CurrentWeapon := SelectedWeapon
    GuiControl,, PresetText, Preset: %CurrentSide% - %CurrentOperator% - %CurrentWeapon%
    if (isActive)
        GuiControl,, StatusText, Status: ACTIVE (%CurrentSide% - %CurrentOperator% - %CurrentWeapon%)
    ToolTip, Loaded: %CurrentOperator% - %CurrentWeapon%
    SetTimer, RemoveToolTip, -1500
return

GuiClose:
    ExitApp
return

RemoveToolTip:
    ToolTip
return

; ----------- TOGGLE HOTKEY -----------
ToggleRecoil:
    isActive := !isActive
    if (isActive) {
        GuiControl,, StatusText, Status: ACTIVE (%CurrentSide% - %CurrentOperator% - %CurrentWeapon%)
    } else {
        GuiControl,, StatusText, Status: INACTIVE
    }
    ToolTip % "Recoil Control: " (isActive ? "ACTIVE" : "INACTIVE")
    SetTimer, RemoveToolTip, -1000
return

; ----------- RECOIL SCRIPT -----------
~*RButton::
    while (GetKeyState("RButton", "P")) {
        if (EnableRCS && isActive && GetKeyState("LButton", "P")) {
            preset := RecoilPresets[CurrentSide][CurrentOperator][CurrentWeapon]
            vert := Round(preset[1] * ADSMultiplier)
            horiz := Round(preset[2] * ADSMultiplier)
            DllCall("mouse_event", "UInt", 0x01, "Int", horiz, "Int", vert, "UInt", 0, "UPtr", 0)
            Sleep, %DelayRate%
        } else {
            Sleep, 30
        }
    }
return
