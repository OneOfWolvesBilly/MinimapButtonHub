## Version 1.1.0 – 2025-06-29

### ✨ Añadido
【UI】
- Se agregó un botón en el minimapa para expandir o contraer los botones recopilados.
- Se agregó la función de clic derecho para abrir el panel de configuración y restablecer la posición del botón.

【UX】
- Se agregó una función de enfoque al pasar el ratón: el grupo de botones permanece expandido mientras el ratón está encima, y se contrae automáticamente **1,2 segundos** después de que el ratón se aleje.

### 🐞 Corregido
【UI】
- Se corrigió un problema donde los botones no se contraían correctamente.
- Se corrigió un problema donde el clic derecho a veces no respondía.

【Lógica】
- Se corrigió un error raro de Lua causado por conflictos con el temporizador de contracción.
- Se corrigió un problema donde el enfoque del ratón no cancelaba correctamente la cuenta regresiva de contracción.

### 🔧 Mejorado
【UX】
- Mejorada la estabilidad y fiabilidad del sistema de contracción automática.
- La detección del ratón ahora es más fluida y responde más rápido.

【Lógica】
- Se optimizó la gestión interna del temporizador para mejorar la estabilidad del comportamiento de contracción y expansión.

---

## Version 1.0.0 – 2025-06-19

### ✨ Funcionalidades
【Funcionalidad principal】
- Detección automática y recopilación de los botones del minimapa (compatible con botones basados en LibDBIcon).
- Proporciona un botón en el minimapa para expandir o contraer los botones recopilados.

【UI】
- El clic derecho en el botón principal abre el panel de configuración con una opción para restablecer la posición del botón.
- Soporte para arrastrar y soltar el botón del minimapa para reposicionarlo.

【Almacenamiento】
- La posición del botón y la configuración se guardan y comparten entre todos los personajes de la misma cuenta.
