// demon.ink
=== scene_meuble_invocation ===
Pris d’une furie artisanale s’approchant de la folie, vous fabriquez divers meubles et
mobilier sans vous arrêter jusqu’à vous faire saigner les mains. Puis, soudain, le sol tremble
et un pentacle rouge apparaît au sol, et une créature cornue en émerge.

+ [quoi ? que…]
    -> scene_demon_1


=== scene_demon_1 ===
La créature cornue s’exclame :
"Je suis Tag’Thinzagdrandrogmemaz, prince démon de l’ennui, comte de la folie et archiduc
du mobilier, mortel. Prosterne-toi ! Par ton acharnement sur ce mobilier, tu as suscité mon
attention et mes faveurs. Je t’octroie un souhait. Choisis."

+ [la puissance]
    -> scene_demon_puissance
+ [le savoir]
    -> scene_demon_savoir
+ [la richesse]
    -> scene_demon_richesse
+ [archiduc du mobilier ?]
    -> scene_demon_question_1


=== scene_demon_puissance ===
"La puissance ?" s’esclaffe le démon. "Très bon choix." Puis il pointe son doigt vers vous et
vous vous enivrez d’énergie impie. "Va maintenant et fais ce qu’il te sied avec tes nouveaux
pouvoirs." Puis il disparaît.

Ivre de pouvoir et de vengeance après toutes ces années d’humiliation pour votre
profession et votre personne, vous convoquez une bande de démons inférieurs avec vos
nouveaux pouvoirs, ainsi qu’un équipement digne de votre nouveau rôle de chevalier
infernal, et massacrez votre village. Puis vous vous dirigez avec une armée infernale
toujours grandissante vers la capitale, où vous surprenez les défenses et prenez le pouvoir
en quelques jours. Puis vous jetez votre dévolu sur tout le pays et créez un nouvel État
tyrannique et démoniaque où règnent le sang, les flammes et les artisans du mobilier.

+ [Victoire – Seigneur démoniaque du mobilier]
    -> RESET


=== scene_demon_savoir ===
"Le savoir ?" dit-il. "Qu’il en soit ainsi !" et il claque des doigts. Hélas, vous n’avez pas
précisé quel savoir, et vous voilà assailli par toutes les connaissances des pratiques
sexuelles de toutes les espèces et races de ce monde, telles que le Kamasutra kobold ou le
recueil de bondage ogre. Puis, à un moment, devant la masse incommensurable
d’informations que votre cerveau assimile, celui-ci arrive à sa capacité maximale et fond.
Vous mourez avec votre cerveau coulant par les oreilles.

+ [Vous êtes mort]
    -> RESET


=== scene_demon_richesse ===
"La richesse ? Très bien." Et celui-ci prononce des mots dans une langue que vous ne
connaissez pas, puis disparaît.

Au premier abord, rien ne se passe. Puis, dans les semaines qui suivent, vos meubles
deviennent extrêmement demandés et s’arrachent à prix d’or dans tout le pays, puis le
continent, puis le monde. Vous distillez parfois, par pure sournoiserie, un meuble maudit
dans vos commandes. Mais rapidement, vous devenez un baron extrêmement riche,
puissant et influent. Puis, un soir, par mégarde, vous vous asseyez sur un tabouret maudit
fraîchement créé et celui-ci vous tue.

+ [Vous êtes mort]
    -> RESET


=== scene_demon_question_1 ===
"Oui, l’archiduc du mobilier. Comme aucun ange, archange, diable ou démon ne voulait ce
domaine, je l’ai pris. Mais il se trouve que tout le monde utilise du mobilier, du coup je suis
devenu très puissant. Alors, choisis."

+ [la puissance]
    -> scene_demon_puissance
+ [le savoir]
    -> scene_demon_savoir
+ [la richesse]
    -> scene_demon_richesse
+ [archiduc du mobilier ?]
    -> scene_demon_question_2


=== scene_demon_question_2 ===
"Tu m’as déjà posé la question, mortel. Et oui, je tire ma puissance du mobilier utilisé sur
tous les plans d’existence. Donc vite, choisis ta récompense, j’ai d’autres âmes à torturer."

+ [la puissance]
    -> scene_demon_puissance
+ [le savoir]
    -> scene_demon_savoir
+ [la richesse]
    -> scene_demon_richesse
+ [archiduc du mobilier ?]
    -> scene_demon_question_3


=== scene_demon_question_3 ===
"Oh bon sang, je suis encore tombé sur un génie. Tu me saoules et je n’ai pas le temps."
Il pointe son doigt, un éclair surgit, et pouf, vous voilà transformé en commode. Votre âme
est à jamais prisonnière d’une commode en pin.

+ [Vous êtes mort]
    -> RESET
