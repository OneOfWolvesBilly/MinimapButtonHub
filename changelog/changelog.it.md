## Version 1.1.0 – 2025-06-29

### ✨ Aggiunto
【UI】
- Aggiunto un pulsante sulla minimappa per espandere o comprimere i pulsanti raccolti.
- Aggiunta la funzione del tasto destro per aprire il pannello delle impostazioni e reimpostare la posizione del pulsante.

【UX】
- Aggiunta una funzione di focus al passaggio del mouse: il gruppo di pulsanti rimane espanso mentre il mouse è sopra, quindi si comprime automaticamente dopo **1,2 secondi** quando il mouse si sposta fuori dall'area.

### 🐞 Corretto
【UI】
- Corretto un problema per cui i pulsanti a volte non si comprimevano correttamente.
- Corretto un problema per cui il clic destro a volte non rispondeva.

【Logica】
- Corretto un raro errore Lua causato da conflitti con il timer di compressione.
- Corretto un problema per cui il focus del mouse non annullava correttamente il conto alla rovescia della compressione.

### 🔧 Migliorato
【UX】
- Migliorata l'affidabilità e la stabilità del sistema di compressione automatica.
- La rilevazione del passaggio del mouse è ora più fluida e reattiva.

【Logica】
- Ottimizzata la gestione interna dei timer per rendere più stabile il comportamento di espansione e compressione dei pulsanti.

---

## Version 1.0.0 – 2025-06-19

### ✨ Funzionalità
【Funzionalità principali】
- Rilevamento automatico e raccolta dei pulsanti sulla minimappa (supporto per pulsanti basati su LibDBIcon).
- Pulsante sulla minimappa per espandere o comprimere i pulsanti raccolti.

【UI】
- Clic destro sul pulsante principale per aprire il pannello delle impostazioni con un'opzione per reimpostare la posizione.
- Supporto per trascinare e rilasciare il pulsante della minimappa per riposizionarlo.

【Salvataggio】
- La posizione del pulsante e le impostazioni vengono salvate e condivise tra tutti i personaggi dello stesso account.
