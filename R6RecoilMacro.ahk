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

RecoilPresets["Defending"]["Aruni"] := Object()
RecoilPresets["Defending"]["Aruni"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Azami"] := Object()
RecoilPresets["Defending"]["Azami"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Bandit"] := Object()
RecoilPresets["Defending"]["Bandit"]["Default"] := [4, 1, 0]

RecoilPresets["Defending"]["Castle"] := Object()
RecoilPresets["Defending"]["Castle"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Clash"] := Object()
RecoilPresets["Defending"]["Clash"]["Default"] := [9, 1, 0]

RecoilPresets["Defending"]["Doc"] := Object()
RecoilPresets["Defending"]["Doc"]["MP5"] := [12, -0.9, 0]

RecoilPresets["Defending"]["Echo"] := Object()
RecoilPresets["Defending"]["Echo"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Ela"] := Object()
RecoilPresets["Defending"]["Ela"]["Default"] := [13, 2.1, 0]

RecoilPresets["Defending"]["Frost"] := Object()
RecoilPresets["Defending"]["Frost"]["9mm-C1"] := [9, 0, 0]

RecoilPresets["Defending"]["Goyo"] := Object()
RecoilPresets["Defending"]["Goyo"]["Vector.45"] := [21, -0.25, 0]

RecoilPresets["Defending"]["Jager"] := Object()
RecoilPresets["Defending"]["Jager"]["Default"] := [15, 1, 0]

RecoilPresets["Defending"]["Kaid"] := Object()
RecoilPresets["Defending"]["Kaid"]["Default"] := [10, 0.5, 0]

RecoilPresets["Defending"]["Kapkan"] := Object()
RecoilPresets["Defending"]["Kapkan"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Lesion"] := Object()
RecoilPresets["Defending"]["Lesion"]["Default"] := [15, 0, 0]

RecoilPresets["Defending"]["Melusi"] := Object()
RecoilPresets["Defending"]["Melusi"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Mira"] := Object()
RecoilPresets["Defending"]["Mira"]["Vector.45"] := [17, -0.25, 0]

RecoilPresets["Defending"]["Mute"] := Object()
RecoilPresets["Defending"]["Mute"]["SMG-11"] := [22, -0.05, 0]

RecoilPresets["Defending"]["Smoke"] := Object()
RecoilPresets["Defending"]["Smoke"]["SMG-11"] := [22, -0.05, 0]

RecoilPresets["Defending"]["Valkyrie"] := Object()
RecoilPresets["Defending"]["Valkyrie"]["Default"] := [5, 1, 0]

RecoilPresets["Defending"]["Vigil"] := Object()
RecoilPresets["Defending"]["Vigil"]["SMG-12"] := [22, 5, 0]

RecoilPresets["Defending"]["Warden"] := Object()
RecoilPresets["Defending"]["Warden"]["Default"] := [5, 1, 0]

; Attacking Operators
RecoilPresets["Attacking"] := Object()

RecoilPresets["Attacking"]["Ace"] := Object()
RecoilPresets["Attacking"]["Ace"]["AK-12"] := [18, -0.7.5, 0]

RecoilPresets["Attacking"]["Ash"] := Object()
RecoilPresets["Attacking"]["Ash"]["R4-C"] := [18, -1.2, 0]

RecoilPresets["Attacking"]["Blackbeard"] := Object()
RecoilPresets["Attacking"]["Blackbeard"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Buck"] := Object()
RecoilPresets["Attacking"]["Buck"]["C8-SFW"] := [19, -0.5, 0]

RecoilPresets["Attacking"]["Capitao"] := Object()
RecoilPresets["Attacking"]["Capitao"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Dokkaebi"] := Object()
RecoilPresets["Attacking"]["Dokkaebi"]["SMG-12"] := [22, 5, 0]

RecoilPresets["Attacking"]["Flores"] := Object()
RecoilPresets["Attacking"]["Flores"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Hibana"] := Object()
RecoilPresets["Attacking"]["Hibana"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["IQ"] := Object()
RecoilPresets["Attacking"]["IQ"]["Default"] := [4, 1, 0]

RecoilPresets["Attacking"]["Nokk"] := Object()
RecoilPresets["Attacking"]["Nokk"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Nomad"] := Object()
RecoilPresets["Attacking"]["Nomad"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Osa"] := Object()
RecoilPresets["Attacking"]["Osa"]["Default"] := [9, 1, 0]

RecoilPresets["Attacking"]["Ram"] := Object()
RecoilPresets["Attacking"]["Ram"]["R4-C"] := [18, -1.2, 0]


RecoilPresets["Attacking"]["Sledge"] := Object()
RecoilPresets["Attacking"]["Sledge"]["Default"] := [ 13.25, 0.8, 0]

RecoilPresets["Attacking"]["Thatcher"] := Object()
RecoilPresets["Attacking"]["Thatcher"]["Default"] := [4, 1, 0]

RecoilPresets["Attacking"]["Thermite"] := Object()
RecoilPresets["Attacking"]["Thermite"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Twitch"] := Object()
RecoilPresets["Attacking"]["Twitch"]["Default"] := [5, 1, 0]

RecoilPresets["Attacking"]["Zero"] := Object()
RecoilPresets["Attacking"]["Zero"]["Default"] := [5, 1, 0]

CurrentSide := "Defending"
CurrentOperator := "Rook"
CurrentWeapon := "P9"
isActive := false
horizontalDirection := 1

; ----------- GUI -----------
Gui, Font, s10, Segoe UI
Gui, Margin, 10, 10

; Side Selection
Gui, Add, GroupBox, x10 y10 w280 h70, Side Selection
Gui, Add, DropDownList, x20 y35 w260 vSelectedSide gUpdateSide Choose1, Defending|Attacking

; Operator Selection
Gui, Add, GroupBox, x10 y90 w280 h70, Operator Selection
Gui, Add, DropDownList, x20 y115 w260 vSelectedOperator gUpdateOperator

; Weapon Selection
Gui, Add, GroupBox, x10 y170 w280 h70, Weapon Selection
Gui, Add, DropDownList, x20 y195 w260 vSelectedWeapon gUpdateWeapon

; Recoil Adjustment
Gui, Add, GroupBox, x10 y250 w280 h110, Recoil Adjustment
Gui, Add, Text, x20 y275 w80 h20, Vertical (Y):
Gui, Add, Slider, x110 y275 w160 h20 vVertSlider Range0-30 ToolTip, 5
Gui, Add, Text, x20 y300 w80 h20, Horizontal (X):
Gui, Add, Slider, x110 y300 w160 h20 vHorizSlider Range-10-10 ToolTip, 1

; Settings Section
Gui, Add, GroupBox, x10 y370 w280 h70, Settings
Gui, Add, Text, x20 y395 w80 h20, ADS Multiplier:
Gui, Add, Slider, x110 y395 w160 h20 vADSMultiplierSlider Range50-150 ToolTip, % ADSMultiplier*100
Gui, Add, Text, x20 y425 w80 h20, Delay (ms):
Gui, Add, Slider, x110 y425 w160 h20 vDelaySlider Range1-20 TickInterval5 ToolTip, % DelayRate

; Control Buttons
Gui, Add, Button, x20 y450 w120 h30 gApplySettings, Apply Settings
Gui, Add, Button, x170 y450 w120 h30 gResetDefaults, Reset Defaults

; Status Section
Gui, Add, GroupBox, x10 y490 w280 h60, Status
Gui, Add, Text, x20 y515 w260 h20 vStatusText, Status: INACTIVE
Gui, Add, Text, x20 y540 w260 h20 vPresetText, Preset: None Selected

; Initialize GUI
GuiControl,, ADSMultiplierSlider, % ADSMultiplier*100
GuiControl,, DelaySlider, % DelayRate
Gosub, UpdateSide
Gui, Show, w300 h570, Rainbow Six Recoil Control

; ----------- HOTKEY REGISTER -----------
Hotkey, % "*" ToggleKey, ToggleRecoil, On

return

; ----------- GUI FUNCTIONS -----------
UpdateSide:
    Gui, Submit, NoHide
    CurrentSide := SelectedSide
    GuiControl,, SelectedOperator,|
    
    operatorList := ""
    for operator, _ in RecoilPresets[CurrentSide]
        operatorList .= operator "|"
    
    GuiControl,, SelectedOperator, %operatorList%
    
    ; Select first operator by default
    for operator, _ in RecoilPresets[CurrentSide]
    {
        CurrentOperator := operator
        GuiControl, ChooseString, SelectedOperator, %CurrentOperator%
        break
    }
    
    Gosub, UpdateOperator
return

UpdateOperator:
    Gui, Submit, NoHide
    CurrentOperator := SelectedOperator
    GuiControl,, SelectedWeapon,|
    
    weaponList := ""
    for weapon, _ in RecoilPresets[CurrentSide][CurrentOperator]
        weaponList .= weapon "|"
    
    GuiControl,, SelectedWeapon, %weaponList%
    
    ; Select first weapon by default
    for weapon, _ in RecoilPresets[CurrentSide][CurrentOperator]
    {
        CurrentWeapon := weapon
        GuiControl, ChooseString, SelectedWeapon, %CurrentWeapon%
        break
    }
    
    Gosub, UpdateWeapon
return

UpdateWeapon:
    Gui, Submit, NoHide
    CurrentWeapon := SelectedWeapon
    
    ; Update sliders with current weapon's preset
    if (CurrentSide && CurrentOperator && CurrentWeapon)
    {
        preset := RecoilPresets[CurrentSide][CurrentOperator][CurrentWeapon]
        GuiControl,, VertSlider, % preset[1]
        GuiControl,, HorizSlider, % preset[2]
    }
    
    UpdatePresetText()
return

ApplySettings:
    Gui, Submit, NoHide
    ADSMultiplier := ADSMultiplierSlider/100
    DelayRate := DelaySlider
    
    ; Update recoil preset if sliders were adjusted
    if (CurrentSide && CurrentOperator && CurrentWeapon)
    {
        RecoilPresets[CurrentSide][CurrentOperator][CurrentWeapon] := [VertSlider, HorizSlider, 0]
    }
    
    UpdatePresetText()
    
    if (isActive)
        GuiControl,, StatusText, Status: ACTIVE (%CurrentSide% - %CurrentOperator% - %CurrentWeapon%)
    
    ToolTip, Settings Applied`n%CurrentOperator% - %CurrentWeapon%`nY: %VertSlider% | X: %HorizSlider%`nADS: %ADSMultiplier%x | Delay: %DelayRate%ms
    SetTimer, RemoveToolTip, -1500
return

ResetDefaults:
    ; Reload script to reset all values to original
    Reload
return

UpdatePresetText() {
    global
    GuiControl,, PresetText, Preset: %CurrentSide% - %CurrentOperator% - %CurrentWeapon%
}

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