# Desktop Switcher

**Desktop Switcher** is a lightweight AutoHotkey script that allows you to quickly switch between virtual desktops using `Super + [Desktop Number]`.  

> **Note:** `Super` refers to the Windows/Start key.

## Features
- Switch between desktops using simple keyboard shortcuts.
- Optional auto-start on login.

## Prerequisites
- **AutoHotkey v2** must be installed.  
  Download from the [official AutoHotkey website](https://www.autohotkey.com/).

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/MhamdiAbdelilah/windows-desktop-shortcut.git
    ```
    Or download the ZIP file from the top right and extract it.
2. Run `desktop-shortcut.ahk`.
3. Use the shortcuts (`Super + [Desktop Number]`) to switch desktops.

## Auto Startup
To launch the script automatically at Windows startup:  

1. Create a shortcut to `desktop-shortcut.ahk` in the Startup folder:  
    ```text
    C:\Users\{YourUsername}\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
    ```
2. Replace `{YourUsername}` with your actual Windows username.

