## Version 1.1.0 – 2025-06-29

### ✨ Adicionado
【UI】
- Adicionado um botão no minimapa para expandir ou recolher os botões coletados.
- Adicionada a função de clique direito para abrir o painel de configurações e redefinir a posição do botão.

【UX】
- Adicionada uma função de foco ao passar o mouse: o grupo de botões permanece expandido enquanto o mouse está sobre ele, e se recolhe automaticamente após **1,2 segundos** quando o mouse sai da área.

### 🐞 Corrigido
【UI】
- Corrigido um problema em que os botões às vezes não se recolhiam corretamente.
- Corrigido um problema em que o clique direito às vezes não respondia.

【Lógica】
- Corrigido um erro raro de Lua causado por conflitos com o temporizador de recolhimento.
- Corrigido um problema em que o foco do mouse não cancelava corretamente a contagem regressiva de recolhimento.

### 🔧 Melhorias
【UX】
- Melhorada a estabilidade e confiabilidade do sistema de recolhimento automático.
- A detecção de foco do mouse agora está mais suave e responsiva.

【Lógica】
- Otimizada a gestão interna dos temporizadores para tornar mais estáveis os comportamentos de recolhimento e expansão dos botões.

---

## Version 1.0.0 – 2025-06-19

### ✨ Funcionalidades
【Funcionalidade principal】
- Detecção automática e coleta dos botões no minimapa (suporte para botões baseados em LibDBIcon).
- Fornece um botão no minimapa para expandir ou recolher os botões coletados.

【UI】
- Clique direito no botão principal para abrir o painel de configurações com uma opção de redefinir a posição do botão.
- Suporte para arrastar e soltar o botão do minimapa para reposicioná-lo.

【Armazenamento】
- A posição do botão e as configurações são salvas e compartilhadas entre todos os personagens da mesma conta.
