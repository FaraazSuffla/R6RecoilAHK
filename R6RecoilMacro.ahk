; ----------- CONFIG -----------
#NoEnv
#SingleInstance Force
SendMode Input
SetBatchLines -1
SetWorkingDir %A_ScriptDir%

; ----------- GLOBALS -----------
configFile := A_ScriptDir . "\recoil_config.ini"
defaultSettings := {ToggleKey: "=", DelayRate: 5, ADSMultiplier: 0.7}

; ----------- LOAD OR INITIALIZE CONFIG -----------
if (!FileExist(configFile)) {
    CreateDefaultConfig()
}
LoadConfig()

; ----------- PRESETS -----------
RecoilPresets := Object()
InitializePresets()

; ----------- GUI -----------
Gui, Font, s10, Segoe UI
Gui, Margin, 10, 10
BuildGUI()
Gui, Show, w300 h570, Rainbow Six Recoil Control
Hotkey, % "*" ToggleKey, ToggleRecoil, On
return

; ----------- FUNCTIONS -----------
CreateDefaultConfig() {
    global configFile, defaultSettings
    
    IniWrite, % defaultSettings.ToggleKey, % configFile, Settings, ToggleKey
    IniWrite, % defaultSettings.DelayRate, % configFile, Settings, DelayRate
    IniWrite, % defaultSettings.ADSMultiplier, % configFile, Settings, ADSMultiplier
    
    ; Initialize with default operator selection
    IniWrite, Defending, % configFile, LastSession, Side
    IniWrite, Rook, % configFile, LastSession, Operator
    IniWrite, P9, % configFile, LastSession, Weapon
}

LoadConfig() {
    global configFile, ToggleKey, DelayRate, ADSMultiplier
    global CurrentSide, CurrentOperator, CurrentWeapon
    
    IniRead, ToggleKey, % configFile, Settings, ToggleKey, % defaultSettings.ToggleKey
    IniRead, DelayRate, % configFile, Settings, DelayRate, % defaultSettings.DelayRate
    IniRead, ADSMultiplier, % configFile, Settings, ADSMultiplier, % defaultSettings.ADSMultiplier
    
    IniRead, CurrentSide, % configFile, LastSession, Side, Defending
    IniRead, CurrentOperator, % configFile, LastSession, Operator, Rook
    IniRead, CurrentWeapon, % configFile, LastSession, Weapon, P9
}

BuildGUI() {
    global
    
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
    Gui, Add, Slider, x110 y275 w160 h20 vVertSlider Range0-30 gLiveUpdate ToolTip
    Gui, Add, Text, x20 y300 w80 h20, Horizontal (X):
    Gui, Add, Slider, x110 y300 w160 h20 vHorizSlider Range-10-10 gLiveUpdate ToolTip
    
    ; Settings Section
    Gui, Add, GroupBox, x10 y370 w280 h70, Settings
    Gui, Add, Text, x20 y395 w80 h20, ADS Multiplier:
    Gui, Add, Slider, x110 y395 w160 h20 vADSMultiplierSlider Range50-150 gLiveUpdate ToolTip
    Gui, Add, Text, x20 y425 w80 h20, Delay (ms):
    Gui, Add, Slider, x110 y425 w160 h20 vDelaySlider Range1-20 TickInterval5 gLiveUpdate ToolTip
    
    ; Control Buttons
    Gui, Add, Button, x20 y450 w120 h30 gApplySettings, Apply Settings
    Gui, Add, Button, x170 y450 w120 h30 gResetToDefaults, Reset Defaults
    
    ; Status Section
    Gui, Add, GroupBox, x10 y490 w280 h60, Status
    Gui, Add, Text, x20 y515 w260 h20 vStatusText, Status: INACTIVE
    Gui, Add, Text, x20 y540 w260 h20 vPresetText, Preset: None Selected
    
    ; Initialize controls
    GuiControl, ChooseString, SelectedSide, %CurrentSide%
    Gosub, UpdateOperator
    GuiControl,, ADSMultiplierSlider, % ADSMultiplier*100
    GuiControl,, DelaySlider, % DelayRate
}

InitializePresets() {
    global RecoilPresets
    
    ; ============ DEFENDING OPERATORS ============
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
    RecoilPresets["Defending"]["Frost"]["9mm C1"] := [9, 0, 0]

    RecoilPresets["Defending"]["Goyo"] := Object()
    RecoilPresets["Defending"]["Goyo"]["Vector .45"] := [21, -0.25, 0]

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
    RecoilPresets["Defending"]["Mira"]["Vector .45"] := [17, -0.25, 0]

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

    ; ============ ATTACKING OPERATORS ============
    RecoilPresets["Attacking"] := Object()

    RecoilPresets["Attacking"]["Ace"] := Object()
    RecoilPresets["Attacking"]["Ace"]["AK-12"] := [18, -0.75, 0]

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
    RecoilPresets["Attacking"]["Sledge"]["Default"] := [13.25, 0.8, 0]

    RecoilPresets["Attacking"]["Thatcher"] := Object()
    RecoilPresets["Attacking"]["Thatcher"]["Default"] := [4, 1, 0]

    RecoilPresets["Attacking"]["Thermite"] := Object()
    RecoilPresets["Attacking"]["Thermite"]["Default"] := [5, 1, 0]

    RecoilPresets["Attacking"]["Twitch"] := Object()
    RecoilPresets["Attacking"]["Twitch"]["Default"] := [5, 1, 0]

    RecoilPresets["Attacking"]["Zero"] := Object()
    RecoilPresets["Attacking"]["Zero"]["Default"] := [5, 1, 0]
}

; ----------- GUI SUBROUTINES -----------
UpdateSide:
    Gui, Submit, NoHide
    CurrentSide := SelectedSide
    GuiControl,, SelectedOperator, |
    
    for operator, _ in RecoilPresets[CurrentSide]
        GuiControl,, SelectedOperator, %operator%
    
    GuiControl, ChooseString, SelectedOperator, %CurrentOperator%
    Gosub, UpdateOperator
return

UpdateOperator:
    Gui, Submit, NoHide
    CurrentOperator := SelectedOperator
    GuiControl,, SelectedWeapon, |
    
    for weapon, _ in RecoilPresets[CurrentSide][CurrentOperator]
        GuiControl,, SelectedWeapon, %weapon%
    
    GuiControl, ChooseString, SelectedWeapon, %CurrentWeapon%
    Gosub, UpdateWeapon
return

UpdateWeapon:
    Gui, Submit, NoHide
    CurrentWeapon := SelectedWeapon
    
    ; Try to load saved values first
    IniRead, savedY, % configFile, %CurrentSide%_%CurrentOperator%_%CurrentWeapon%, Y, % ""
    IniRead, savedX, % configFile, %CurrentSide%_%CurrentOperator%_%CurrentWeapon%, X, % ""
    
    if (savedY != "" && savedX != "") {
        GuiControl,, VertSlider, %savedY%
        GuiControl,, HorizSlider, %savedX%
    } else {
        ; Use default preset if no saved values
        preset := RecoilPresets[CurrentSide][CurrentOperator][CurrentWeapon]
        GuiControl,, VertSlider, % preset[1]
        GuiControl,, HorizSlider, % preset[2]
    }
    
    UpdatePresetText()
return

LiveUpdate:
    if (A_GuiControl = "VertSlider" || A_GuiControl = "HorizSlider") {
        UpdatePresetText()
    }
return

ApplySettings:
    Gui, Submit, NoHide
    ADSMultiplier := ADSMultiplierSlider/100
    DelayRate := DelaySlider
    
    ; Save settings
    IniWrite, % ADSMultiplier, % configFile, Settings, ADSMultiplier
    IniWrite, % DelayRate, % configFile, Settings, DelayRate
    IniWrite, % CurrentSide, % configFile, LastSession, Side
    IniWrite, % CurrentOperator, % configFile, LastSession, Operator
    IniWrite, % CurrentWeapon, % configFile, LastSession, Weapon
    
    ; Save recoil adjustments
    IniWrite, % VertSlider, % configFile, %CurrentSide%_%CurrentOperator%_%CurrentWeapon%, Y
    IniWrite, % HorizSlider, % configFile, %CurrentSide%_%CurrentOperator%_%CurrentWeapon%, X
    
    ; Update in-memory preset
    RecoilPresets[CurrentSide][CurrentOperator][CurrentWeapon] := [VertSlider, HorizSlider, 0]
    
    UpdatePresetText()
    ToolTip  ; Remove any existing tooltip first
    ToolTip, Settings Saved!`n%CurrentOperator% - %CurrentWeapon%, , , 2
    SetTimer, RemoveToolTip, -1500
return

ResetToDefaults:
    MsgBox, 4,, Reset all settings to defaults? (This cannot be undone)
    IfMsgBox, Yes
    {
        FileDelete, % configFile
        CreateDefaultConfig()
        LoadConfig()
        Reload
    }
return

UpdatePresetText() {
    global
    GuiControl,, PresetText, % "Preset: " CurrentSide " - " CurrentOperator " - " CurrentWeapon
    GuiControl,, StatusText, % "Status: " (isActive ? "ACTIVE" : "INACTIVE")
}

; ----------- HOTKEYS -----------
ToggleRecoil:
    isActive := !isActive
    UpdatePresetText()
    ToolTip % "Recoil Control: " (isActive ? "ACTIVE" : "INACTIVE")
    SetTimer, RemoveToolTip, -1000
return

; ----------- RECOIL CONTROL -----------
~*RButton::
    while (GetKeyState("RButton", "P")) {
        if (isActive && GetKeyState("LButton", "P")) {
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

; ----------- UTILITY -----------
RemoveToolTip:
    Loop, 20  ; Remove up to 20 possible tooltips
    {
        ToolTip,,,, %A_Index%
    }
return
GuiClose:
    ExitApp
return