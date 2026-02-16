// main.ink
INCLUDE debut_marche.ink
INCLUDE Capitale.ink
INCLUDE Demon.ink
INCLUDE Peche.ink

VAR epee = false
VAR tourte = false
VAR epice = false
VAR marche = false
VAR peche = false
VAR peche_locked = false
VAR capitale = false
VAR compteur_meuble = 0
VAR bandits = false
VAR marchand = false
VAR noble = false
VAR caserne = false

-> scene_debut  // ← Commence DIRECTEMENT ici

=== RESET ===
~ epee = false
~ tourte = false
~ epice = false
~ marche = false
~ peche = false
~ peche_locked = false
~ capitale = false
~ compteur_meuble = 0
~ bandits = false
~ marchand = false
~ noble = false
~ caserne = false
-> scene_debut