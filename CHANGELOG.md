# 📜 DEVELOPER CHANGELOG

## [Version 1.1.0] – 2025-06-29

### ✨ Added
【Framework】
- Refactored the entire codebase into an object-oriented architecture.

【Logic】
- Added hover focus tracking system with timer-based auto-collapse when the mouse leaves the button area.

---

### 🐞 Fixed
【Logic】
- Fixed undefined function errors caused by function hoisting and local scoping issues.
- Fixed race conditions in the collapse timer logic.

【Structure】
- Fixed execution order issues for helper functions that led to runtime errors.

---

### 🔧 Changed
【Framework】
- Collapse and expand logic now fully relies on the internal MBH object state instead of global variables.
- Converted all internal helper functions into MBH object methods.

【Logic】
- Improved modularity for hover detection, collapse timing, and button state management.

【Code Quality】
- Improved overall code readability by introducing consistent behavior-style comments and modular separation.

---

## [Version 1.0.0] – 2025-06-19

### ✨ Added
【Core Functionality】
- Built the initial architecture for detecting and collecting minimap buttons.
- Implemented a toggle button on the minimap UI to expand or collapse collected buttons.

【UI/UX】
- Added right-click functionality to open the settings panel with a button position reset option.
- Enabled drag-and-drop to reposition the minimap button.

【Storage】
- Added persistent storage for button positions and settings (account-wide, saved across characters).
