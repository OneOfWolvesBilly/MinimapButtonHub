## Version 1.1.0 – 2025-06-29

### ✨ Ajouté
【UI】
- Ajout d’un bouton sur la mini-carte permettant d’afficher ou de masquer les boutons collectés.
- Ajout d’un clic droit pour ouvrir le panneau de configuration et réinitialiser la position du bouton.

【UX】
- Ajout d’une fonctionnalité de focus au survol : le groupe de boutons reste affiché tant que la souris est dessus, puis se replie automatiquement après **1,2 seconde** lorsque la souris quitte la zone.

### 🐞 Corrigé
【UI】
- Correction d’un problème où les boutons ne se repliaient pas correctement.
- Correction d’un problème où le clic droit ne répondait pas parfois.

【Logique】
- Correction d’une erreur Lua rare causée par des conflits avec le minuteur de repli.
- Correction d’un problème où le survol n’annulait pas correctement le compte à rebours de repli.

### 🔧 Amélioré
【UX】
- Amélioration de la stabilité et de la fiabilité du système de repli automatique.
- La détection du survol est désormais plus fluide et plus réactive.

【Logique】
- Optimisation de la gestion interne des minuteurs pour rendre le déploiement et le repli des boutons plus stable.

---

## Version 1.0.0 – 2025-06-19

### ✨ Fonctionnalités
【Fonctionnalités principales】
- Détection automatique et collecte des boutons de la mini-carte (prise en charge des boutons basés sur LibDBIcon).
- Ajout d’un bouton sur la mini-carte pour afficher ou masquer les boutons collectés.

【UI】
- Clic droit sur le bouton principal pour ouvrir le panneau de configuration avec une option de réinitialisation de la position.
- Prise en charge du glisser-déposer pour déplacer le bouton de la mini-carte.

【Stockage】
- La position du bouton et les paramètres sont partagés entre tous les personnages du même compte.
