// peche.ink
=== scene_sortie_village_foret ===
Vous quittez votre masure avec votre matériel de pêche et vous dirigez vers la forêt. Après
une courte marche, vous arrivez au bord de la rivière. L’eau est claire et poissonneuse. Vous
installez votre ligne et attendez patiemment.

Soudain, un bruit d’éclaboussure attire votre attention. Une créature verdâtre émerge de
l’eau, couverte d’écailles et de branchies saillantes. Ses grands yeux globuleux vous fixent
avec curiosité.

+ [agresser la créature]
    {epee == false: -> scene_mort_creature_sans_epee}
    {epee == true:  -> scene_tuer_creature}

+ [lui donner le poisson que vous venez de pêcher]
    -> scene_ami_creature

+ [s’enfuir en abandonnant votre matériel]
    ~ peche_locked = true
    -> scene_fuite_creature


=== scene_mort_creature_sans_epee ===
Vous vous jetez sur la créature, mais celle-ci est beaucoup plus rapide et forte que prévu.
Elle vous saisit avec ses mains palmées et vous entraîne sous l’eau. Vous vous noyez dans
la rivière.

+ [Vous êtes mort]
    -> RESET


=== scene_tuer_creature ===
Vous dégainez votre épée et frappez la créature. Après un bref combat, elle s’effondre dans
l’eau, teintant la rivière de vert. Vous récupérez votre poisson et rentrez au village, satisfait.
Cette nuit-là, vous êtes réveillé par des cris et le bruit de l’eau qui gicle partout. La tribu
attaque le village en représailles ! Vous êtes submergé par une horde de créatures
furibondes. L’une d’elles vous assomme avec une canne à pêche rouillée.

+ [Vous êtes mort]
    -> RESET


=== scene_fuite_creature ===
Paniqué, vous abandonnez votre matériel et fuyez en courant vers le village. La créature
émet des sons étranges derrière vous mais ne vous poursuit pas. De retour chez vous,
essoufflé, vous réalisez que vous avez tout perdu.

+ [pratiquer l’artisanat]
    ~ compteur_meuble += 1
    -> scene_meuble

+ {capitale == false} [aller à la capitale]
    ~ capitale = true
    -> scene_sortie_village

+ {marche == false} [aller au marché]
    ~ marche = true
    -> scene_marche_intro


=== scene_ami_creature ===
Vous tendez votre poisson à la créature. Ses yeux s’illuminent et elle émet un son joyeux :
"Mrrglrlgl !" Elle prend le poisson, le renifle, puis vous fait signe de la suivre.

Vous hésitez un instant, mais la créature semble amicale. Vous la suivez le long de la rivière
jusqu’à un village caché entre les roseaux.

+ [suivre la créature dans son village]
    -> scene_village_creatures


=== scene_village_creatures ===
Le village est une série de huttes faites de boue, de roseaux et de coquillages. Des dizaines
de créatures vous observent avec curiosité. Votre nouvelle amie vous conduit devant le chef
de la tribu, une créature imposante portant une couronne d’algues.

"Glrbl ? Mrrgl !" dit le chef en vous scrutant. Il vous présente quatre objets disposés sur une
pierre plate :
un coquillage nacré, une étoile de mer séchée, un caillou brillant et un autre poisson.

Toutes les créatures vous regardent intensément, attendant votre choix.

+ [choisir le coquillage]
    -> scene_choix_objet_validation
+ [choisir l’étoile de mer]
    -> scene_choix_objet_validation
+ [choisir le caillou brillant]
    -> scene_choix_objet_validation
+ [choisir le poisson]
    -> scene_choix_objet_validation


=== scene_choix_objet_validation ===
Vous saisissez l’objet. Immédiatement, toutes les créatures explosent de joie :
"MRRGLRLGL ! BRLRLGLGL ! GLRBL !" Elles tapent dans leurs mains palmées et sautillent
autour de vous. Apparemment, c’était le bon choix !

Le chef vous tape sur l’épaule avec enthousiasme et vous invite à participer à la première
activité.

+ [participer à l’activité suivante]
    -> scene_course_bulots


=== scene_course_bulots ===
Les créatures vous conduisent vers une zone plate près de l’eau. Quatre bulots de couleurs
différentes sont alignés : un rouge, un bleu, un vert et un jaune. Le chef vous montre les
bulots en faisant "Glrb ? Glrb ?" et en pointant du doigt.

Vous devez choisir votre champion pour la grande course de bulots !

+ [choisir le bulot rouge]
    -> scene_victoire_bulot
+ [choisir le bulot bleu]
    -> scene_victoire_bulot
+ [choisir le bulot vert]
    -> scene_victoire_bulot
+ [choisir le bulot jaune]
    -> scene_victoire_bulot


=== scene_victoire_bulot ===
Les créatures placent les quatre bulots sur une ligne de départ tracée dans la boue. Une
créature fait un bruit de conque et la course commence !

Les bulots avancent... lentement... très lentement... Et contre toute attente, votre bulot prend
la tête ! Il glisse majestueusement et franchit la ligne d’arrivée en premier !

"MRRGLRLGL ! BRLGLGL !" Les créatures sont en délire ! Elles vous portent en triomphe,
vous couvrent d’algues en signe de respect. Vous êtes le maître des bulots !

+ [continuer les festivités]
    -> scene_danse_rituelle


=== scene_danse_rituelle ===
La nuit tombe. Un grand feu est allumé au centre du village. Les créatures commencent à
émettre des sons rythmiques : "Mrrgl ! Mrrgl ! Glrbl ! Glrbl !" Le chef vous fait signe de les
rejoindre pour la danse rituelle.

Vous ne connaissez rien aux danses de ces créatures, mais vous devez participer !

+ [faire une danse élégante et gracieuse]
    -> scene_danse_succes
+ [improviser avec des mouvements chaotiques]
    -> scene_danse_succes
+ [tenter un breakdance]
    -> scene_danse_chute
+ [rester immobile et juste bouger la tête]
    -> scene_danse_succes


=== scene_danse_chute ===
Vous tentez un mouvement acrobatique, mais vous glissez sur les algues humides et vous
vous étalez de tout votre long dans la boue. Vous vous relevez péniblement, couvert de
vase.

Les créatures vous observent en silence. Puis soudain :
"GLRBLGLRBL ! MRRRRGL !" Elles explosent d’enthousiasme ! Elles pensent que votre chute
faisait partie d’une danse extrêmement complexe ! Elles vous imitent, se jettent au sol à leur
tour et roulent dans la boue en criant de joie !

Le chef vous tape sur l’épaule, visiblement impressionné par votre "technique avancée".

+ [passer à la dernière activité]
    -> scene_ombres_chinoises


=== scene_danse_succes ===
Vous vous lancez dans votre performance. Les créatures vous observent avec attention.
Puis, soudain :
"GLRBLGLRBL ! MRRRRGL !" Elles sont fascinées ! Elles vous imitent, reprennent vos
mouvements et dansent à vos côtés. Vous êtes clairement un génie de la danse à leurs
yeux !

Le chef vous tape sur l’épaule, visiblement impressionné.

+ [passer à la dernière activité]
    -> scene_ombres_chinoises


=== scene_ombres_chinoises ===
Les créatures vous conduisent vers une hutte éclairée par une lanterne à poisson lumineux.
Le chef fait des gestes avec ses mains devant la lumière, créant des ombres sur le mur. Ses
mains à trois doigts palmés forment... quelque chose d’étrange et incompréhensible.

Puis il vous regarde et fait "Glrb ?" en vous invitant à montrer vos talents.

+ [faire une ombre de chien]
    -> scene_ombres_victoire
+ [faire une ombre d’oiseau]
    -> scene_ombres_victoire
+ [faire une ombre de lapin]
    -> scene_ombres_victoire
+ [improviser quelque chose d’abstrait]
    -> scene_ombres_victoire


=== scene_ombres_victoire ===
Vous levez vos mains à cinq doigts devant la lumière et créez votre ombre. Les créatures se
figent. Silence total.

Puis :
"MRRRRRRGLGLGLGL ! BRLBL ! GLRBL !" Elles sont stupéfaites ! Vos mains humaines
produisent des ombres d’une complexité inimaginable pour elles ! Le chef vous regarde avec
une révérence presque religieuse. Vous êtes un dieu de l’ombre à leurs yeux !

+ [accepter les honneurs]
    -> scene_ambassadeur


=== scene_ambassadeur ===
Les semaines passent. Puis les mois. Vous vivez parmi ces créatures, participant à leurs
rituels absurdes et à leurs célébrations incompréhensibles. Peu à peu, vous commencez à
comprendre leur langue gutturale.

"Glrbl" signifie "ami".
"Mrrgl" veut dire "poisson".
"Brlrlglgl" est une insulte envers les crabes.
Et "Grlgrlgrl" exprime la joie.

Un jour, le chef vous convoque et vous remet un collier fait de coquillages et d’arêtes de
poisson.
"Glrbl... ambassadeur !" dit-il dans votre langue avec un accent épais.

Vous êtes officiellement devenu ambassadeur de votre village auprès de cette tribu. Une
victoire étrange, certes, mais une victoire quand même. Les relations diplomatiques entre
votre peuple et ces créatures aquatiques n’ont jamais été aussi bonnes.

+ [Victoire – Ambassadeur des créatures aquatiques]
    -> RESET
