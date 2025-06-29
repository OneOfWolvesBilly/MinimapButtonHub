🌐 **Multi-language changelog available (English + 10 translations):**  
English | 中文（繁體） | 中文（简体） | 日本語 | 한국어 | Deutsch | Français | Español | Português | Русский | Italiano  
🔗 https://github.com/OneOfWolvesBilly/MinimapButtonHub#changelog

---

## Version 1.1.0 – 2025-06-29

### ✨ Added
【UI】
- Added a minimap toggle button to expand or collapse the collected buttons.
- Added right-click functionality to open the settings panel and reset the button position.

【UX】
- Added a hover focus feature: the button group stays expanded while your mouse is over it, then auto-collapses after **1.2** seconds.

### 🐞 Fixed
【UI】
- Fixed occasional UI issues where the button wouldn’t collapse correctly.
- Fixed right-click sometimes not responding.

【Logic】
- Fixed rare Lua errors caused by collapse timer conflicts.
- Fixed hover detection not canceling the collapse countdown correctly.

### 🔧 Improved
【UX】
- Improved the reliability and stability of the auto-collapse system.
- Hover detection is now smoother and more responsive.

【Logic】
- Improved internal timer handling for better button collapse behavior.

---

## Version 1.0.0 – 2025-06-19

### ✨ Features
【Core Functionality】
- Automatically detects and collects minimap buttons (supports LibDBIcon-based buttons).
- Provides a toggle button on the minimap to expand or collapse the collected buttons.

【UI】
- Right-click the button to open the settings panel with a reset position option.
- Supports drag-and-drop to reposition the minimap button.

【Storage】
- Saves button position and settings across all characters in the same account.
