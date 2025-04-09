Rainbow Six Siege Recoil Control Script (AutoHotkey v1)

This project is an AutoHotkey v1 script designed to assist with recoil control in Rainbow Six Siege, allowing players to reduce recoil for specific operators and weapons. The script includes a toggleable recoil compensation system, adjustable delay, ADS scaling, and a user-friendly GUI to select operators and presets.
⚙️ Features

    ✅ Toggle recoil control on/off with =

    🎯 Dynamic recoil adjustment using mouse_event

    🧠 Operator and weapon-specific presets

    🔁 ADS sensitivity scaling

    📋 GUI to select side, operator, weapon, and apply presets

    💡 Visual feedback for current status and loaded preset

🖥️ How It Works

    When Right Mouse Button (ADS) and Left Mouse Button (Fire) are held, the script simulates controlled mouse movements based on preset values.

    Recoil is compensated vertically and horizontally depending on the preset.

    Values can be fine-tuned per operator and weapon.

🔧 Configuration

Located at the top of the script:

EnableRCS := true              ; Enable/disable recoil control
ToggleKey := "="              ; Key to toggle script
DelayRate := 5                ; Delay between recoil steps (ms)
ADSMultiplier := 0.7          ; Adjusts recoil when aiming down sights

🎮 Supported Operators (Examples)

Presets are divided into two categories: Defending and Attacking.
Each operator can have one or more weapon profiles.
Defending Examples:

    Aruni – [5, 1, 0]

    Doc – "MP5": [12, -0.9, 0]

    Ela – [13, 2.1, 0]

    Mute – "SMG-11": [22, -0.05, 0]

    Vigil – "SMG-12": [22, 5, 0]

Attacking Examples:

    Ash – "R4-C": [18, -1.2, 0]

    Buck – "C8-SFW": [19, -0.5, 0]

    Dokkaebi – "SMG-12": [22, 5, 0]

    Sledge – [13.25, 0.8, 0]

(See full list in the script under RecoilPresets.)
🖱️ Usage Instructions

    Run the Script (requires AutoHotkey v1)

    The GUI will appear:

        Select Side (Defending/Attacking)

        Select Operator

        Select Weapon

        Click "Apply Settings"

    Press = to toggle recoil control

    Hold Right Mouse Button (ADS) and Left Mouse Button (Fire) to engage recoil control

    Press = again to disable

📌 Notes

    This script is built using AutoHotkey v1.

    Intended for educational or single-player testing use only.

    Do not use in competitive or online matches where scripts are against terms of service.

📁 File Overview

    R6Recoil.ahk – Main script containing GUI, presets, and recoil logic.

    README.md – Documentation for the project.

🧠 Customization

You can add or modify recoil presets easily:

RecoilPresets["Attacking"]["Ash"]["R4-C"] := [18, -1.2, 0] ; [Vertical, Horizontal, Reserved]

Feel free to tweak values for your personal setup and mouse sensitivity.
