## Version 1.1.0 – 2025-06-29

### ✨ Hinzugefügt
【UI】
- Eine Minimap-Schaltfläche hinzugefügt, um gesammelte Schaltflächen ein- oder auszublenden.
- Rechtsklick-Funktion hinzugefügt, um das Einstellungsfenster zu öffnen und die Schaltflächenposition zurückzusetzen.

【UX】
- Eine Hover-Fokus-Funktion hinzugefügt: Die Schaltfläche bleibt erweitert, während sich der Mauszeiger darüber befindet, und wird nach **1,2 Sekunden** automatisch wieder eingeklappt, wenn der Mauszeiger den Bereich verlässt.

### 🐞 Behoben
【UI】
- Problem behoben, bei dem sich die Schaltfläche manchmal nicht korrekt automatisch einklappte.
- Problem behoben, bei dem der Rechtsklick manchmal nicht reagierte.

【Logik】
- Seltener Lua-Fehler durch Konflikte mit dem Einklapp-Timer behoben.
- Problem behoben, bei dem der Hover-Fokus das Einklappen nicht korrekt abgebrochen hat.

### 🔧 Verbesserungen
【UX】
- Zuverlässigkeit und Stabilität des Auto-Einklapp-Systems verbessert.
- Hover-Erkennung ist jetzt flüssiger und reagiert schneller.

【Logik】
- Die interne Timer-Verwaltung wurde verbessert, um das Einklappen und Ausklappen stabiler zu machen.

---

## Version 1.0.0 – 2025-06-19

### ✨ Funktionen
【Kernfunktionen】
- Automatische Erkennung und Sammlung von Minimap-Schaltflächen (unterstützt auf LibDBIcon basierende Schaltflächen).
- Eine Schaltfläche auf der Minimap zum Ein- oder Ausklappen der gesammelten Schaltflächen bereitgestellt.

【UI】
- Rechtsklick auf die Hauptschaltfläche öffnet das Einstellungsfenster mit einer Option zum Zurücksetzen der Position.
- Unterstützt das Ziehen und Ablegen der Schaltfläche, um sie frei auf der Minimap zu platzieren.

【Speicherung】
- Die Position der Schaltfläche und die Einstellungen werden kontoübergreifend für alle Charaktere gespeichert.
