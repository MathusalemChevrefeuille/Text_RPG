// Texte simple = s'affiche directement
Vous vous réveillez chez vous dans votre masure, groggy de la soirée d'hier à la taverne, mais plein d'idées en tête.

Que faites-vous ?

// Les choix = commencent par *
// Ce qui est entre [] = ce qui s'affiche sur le bouton
// Ce qui vient après = ce qui se passe quand tu cliques

* [Pratiquer l'artisanat et fabriquer une chaise]
    -> artisanat
    
* [Sortir et faire des achats au marché du village]
    -> marche
    
* [Préparer votre sac et partir à la ville]
    -> vers_ville
    
* [Préparer votre matériel de pêche et aller à la rivière]
    -> peche

// Ensuite tu crées les "knots" (scènes) pour chaque choix

== artisanat ==
Vous sortez vos outils et commencez à travailler le bois.
// Suite ici...
-> END

== marche ==
Vous sortez de votre masure et prenez le chemin du village.
// Suite ici...
-> END

== vers_ville ==
Vous préparez votre sac avec quelques provisions.
// Suite ici...
-> END

== peche ==
Vous attrapez votre canne à pêche et descendez vers la forêt.
// Suite ici...
-> END