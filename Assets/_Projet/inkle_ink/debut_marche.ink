// debut_marche.ink
=== scene_debut ===
Vous vous réveillez chez vous dans votre masure, groggy de la soirée dernière à la taverne,
mais plein d’idées dans la tête. Que faites-vous ?

+ [pratiquer l’artisanat et fabriquer une chaise]
    ~ compteur_meuble += 1
    -> scene_meuble

+ [aller au marché pour faire des achats]
    ~ marche = true
    -> scene_marche_intro

+ {capitale == false} [aller à la capitale]
    ~ capitale = true
    -> scene_sortie_village

+ {peche_locked == false} [partir pêcher]
    ~ peche = true
    -> scene_sortie_village_foret


=== scene_meuble ===
Vous travaillez le bois et après quelques heures vous obtenez un meuble de bonne facture.

Meubles fabriqués : {compteur_meuble}

+ [continuer à pratiquer l'artisanat]
    ~ compteur_meuble += 1
    {compteur_meuble >= 5:
        -> scene_meuble_invocation
    - else:
        -> scene_meuble
    }
    
+ {marche == false} [aller au marché pour faire des achats]
    ~ marche = true
    -> scene_marche_intro
    
+ {capitale == false} [aller à la capitale]
    ~ capitale = true
    -> scene_sortie_village
    
+ {peche_locked == false} [partir pêcher]
    ~ peche = true
    -> scene_sortie_village_foret


=== scene_marche_intro ===
Vous arrivez au marché de votre village, à quelques pas de votre demeure. Plusieurs
commerçants sont présents, avec quelques badauds qui vaquent à leurs occupations.
La bourse trop lourde, vous méditez sur quoi jeter votre dévolu.

+ [aller chez le forgeron pour acheter une arme]
    -> scene_forgeron
+ [aller chez le marchand de tourtes]
    -> scene_tourte
+ [aller chez le marchand d’épices]
    -> scene_epices
+ [faire demi-tour et rentrer chez vous, déçu du peu de choix du marché]
    -> scene_retour


=== scene_forgeron ===
Vous êtes chez le forgeron et il offre une petite sélection d’armes.

+ [acheter une épée]
    -> scene_epee
+ [vous raviser car vous n’avez pas les moyens]
    -> scene_marche


=== scene_epee ===
Le forgeron vous présente une épée longue de bonne facture avec son fourreau.

+ [classique, mais cela fera l’affaire. Payer et partir avec votre nouvelle épée]
    ~ epee = true
    -> scene_marche
+ [finalement vous vous ravisez au dernier moment, vous n’avez pas besoin d’arme et partez]
    -> scene_marche


=== scene_tourte ===
Vous arrivez devant un gigantesque étal de tourtes avec de multiples choix dans la
garniture. Attiré par l’odeur, vous ne savez que choisir.

+ [prendre une tourte à la poularde et partir]
    ~ tourte = true
    -> scene_marche
+ [prendre une tourte aux légumes et partir]
    ~ tourte = true
    -> scene_marche
+ [prendre une tourte surprise et partir]
    ~ tourte = true
    -> scene_marche
+ [résister à la tentation des tourtes et partir]
    -> scene_marche


=== scene_epices ===
Vous êtes devant le marchand d’épices. Moult odeurs atteignent votre nez, à la fois
piquantes ou douces. Vous pondérez votre choix crucial pour votre prochain souper.

+ [prendre du sel, une valeur sûre, et partir]
    ~ epice = true
    -> scene_marche
+ [prendre du safran exotique mais cher, et partir]
    ~ epice = true
    -> scene_marche
+ [prendre du cumin, classique mais efficace, et partir]
    ~ epice = true
    -> scene_marche
+ [vous raviser et partir]
    -> scene_marche


=== scene_marche ===
Vous êtes au marché. Que faites-vous ?

+ {epee == false} [aller chez le forgeron]
    -> scene_forgeron
+ {tourte == false} [aller chez le marchand de tourtes]
    -> scene_tourte
+ {epice == false} [aller chez le marchand d’épices]
    -> scene_epices
+ [rentrer chez vous]
    -> scene_retour


=== scene_retour ===
De retour du marché chez vous, vous réfléchissez à votre prochaine action.

+ [pratiquer l’artisanat]
    ~ compteur_meuble += 1
    -> scene_meuble
+ {capitale == false} [aller à la capitale]
    ~ capitale = true
    -> scene_sortie_village
+ {peche_locked == false} [aller à la pêche]
    ~ peche = true
    -> scene_sortie_village_foret
