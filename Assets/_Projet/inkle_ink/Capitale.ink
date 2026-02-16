// capitale.ink
=== scene_sortie_village ===
Vous quittez votre village et prenez la route poussiéreuse menant à la capitale. Après
quelques heures de marche, vous apercevez une petite silhouette verte au milieu du
chemin. En vous approchant, vous réalisez qu'il s'agit d'un gobelin, armé d'un couteau
rouillé. Il vous observe sans dire un mot.

+ [agresser le gobelin]
    {epee == false: -> scene_mort_gobelin_sans_epee}
    {epee == true:  -> scene_tuer_gobelin}

+ [insulter le gobelin]
    -> scene_insulte_gobelin

+ [passer votre chemin sans un regard]
    -> scene_capitale_arrivee


=== scene_mort_gobelin_sans_epee ===
Vous vous jetez sur le gobelin, les poings levés. Il est armé, vous non.

+ [Vous êtes mort]
    -> RESET


=== scene_tuer_gobelin ===
Vous dégainez votre épée et frappez le gobelin. Il tente de se défendre avec son couteau
rouillé, mais il n'a aucune chance. Il s'effondre, mort.
Il n'avait rien fait. Il était juste là.
Vous essuyez votre lame et reprenez votre route vers la capitale. Était-ce vraiment
nécessaire ?

+ [continuer vers la capitale]
    -> scene_capitale_arrivee


=== scene_insulte_gobelin ===
Vous lancez une insulte au gobelin.
Le gobelin se redresse, les yeux brillants de colère. Il vous insulte en retour dans sa langue
gutturale, crachant et gesticulant.

+ [l'agresser]
    {epee == false: -> scene_mort_gobelin_sans_epee}
    {epee == true:  -> scene_tuer_gobelin}

+ [sortir votre plus belle insulte]
    -> scene_insulte_epique

+ [finalement passer votre chemin]
    -> scene_capitale_arrivee


=== scene_insulte_epique ===
Vous prenez une grande inspiration et sortez l'insulte de votre vie. Celle que vous gardez en
réserve pour les grandes occasions.
Le gobelin reste bouche bée. Silence. Puis ses yeux s'illuminent. Il se met à gesticuler avec
enthousiasme et vous fait signe de le suivre.

+ [suivre le gobelin]
    -> scene_tournoi_insultes
+ [refuser et continuer vers la capitale]
    -> scene_capitale_arrivee


=== scene_tournoi_insultes ===
Le gobelin vous conduit à un campement de peaux vertes caché dans les bois. Des dizaines
de gobelins et d'orques sont rassemblés autour d'une arène de fortune. Le chef de la tribu,
un orque massif avec des dents en or, vous fait signe d'entrer dans l'arène.
Face à vous : un champion gobelin réputé, couvert de cicatrices et arborant un sourire
cruel.
Le tournoi commence. Vous échangez insultes sur insultes. Votre adversaire est doué, mais
vous êtes inspiré. La foule hurle de rire et d'excitation à chaque échange.
Finalement, vous sortez le coup de grâce. Une insulte tellement dévastatrice que le
champion s'effondre, vaincu par vos mots. La foule explose de joie. Le chef vous soulève et
vous proclame vainqueur.

+ [accepter la victoire]
    -> scene_star_insultes


=== scene_star_insultes ===
Les semaines passent. Vous devenez une légende parmi les peaux vertes. Vous participez
à des tournois dans tout le territoire, affrontant les plus grands insulteurs du royaume. Votre
renommée grandit.
Bientôt, vous faites des tournées mondiales. Des orques, des gobelins, même des trolls
viennent vous voir affronter leurs champions. Vous gagnez de l'or, de la gloire et le respect
des peaux vertes.
Vous n'avez jamais atteint la capitale. Mais franchement, qui a besoin d'une capitale quand
on est une star internationale du trash talk ?

+ [Victoire – Champion des tournois d'insultes]
    -> RESET


=== scene_capitale_arrivee ===
Vous arrivez enfin à la capitale. Les hautes murailles de pierre se dressent devant vous,
imposantes. Vous franchissez les portes et pénétrez dans les rues pavées, grouillantes de
marchands, de gardes et de citadins affairés.
Personne ne vous remarque vraiment. Ici, vous êtes juste un figurant de plus dans le décor.
La capitale s'ouvre à vous. Que faire maintenant ?

+ {bandits == false} [explorer les ruelles sombres]
    -> scene_bandits_ruelle
+ {marchand == false} [visiter le marché]
    -> scene_marchand_arnaqueur
+ {noble == false} [se promener dans le quartier noble]
    -> scene_noble_arrogant
+ [autre chose]
    -> scene_capitale_menu_2


=== scene_capitale_menu_2 ===
Vous hésitez, balayez la foule du regard… La capitale a peut-être encore des merveilles ou
des pièges à vous tendre.
Que faire maintenant ?

+ {caserne == false} [aller à la caserne militaire]
    -> scene_sergent_recruteur
+ [retourner au centre-ville]
    -> scene_capitale_hub
+ [rentrer au village]
    -> scene_retour_capitale
+ [errer sans but]
    -> scene_capitale_hub


=== scene_capitale_hub ===
Vous êtes dans les rues de la capitale. Que faire ?

+ {bandits == false} [explorer les ruelles sombres]
    -> scene_bandits_ruelle
+ {marchand == false} [visiter le marché]
    -> scene_marchand_arnaqueur
+ {noble == false} [se promener dans le quartier noble]
    -> scene_noble_arrogant
+ [autre chose]
    -> scene_capitale_menu_2

=== scene_bandits_ruelle ===
~ bandits = true
Vous vous aventurez dans une ruelle sombre et étroite. Mauvaise idée. Trois silhouettes
encapuchonnées vous encerclent, brandissant des couteaux.
"Donne-nous ta bourse, et on te laisse partir", grogne le chef.

+ [se battre]
    {epee == false: -> scene_mort_bandits}
    {epee == true:  -> scene_victoire_bandits}
+ [payer la rançon]
    -> scene_rancon_bandits


=== scene_mort_bandits ===
Vous tentez de vous défendre à mains nues. Les bandits sont trop nombreux et trop rapides.
Vous recevez un coup de couteau dans le flanc, puis un autre. Vous vous effondrez dans la
ruelle sombre.

+ [Vous êtes mort]
    -> RESET


=== scene_victoire_bandits ===
Vous dégainez votre épée. Les bandits hésitent. Vous frappez rapidement, les désarmez et
les forcez à fuir comme des rats. Vous rangez votre arme et reprenez votre exploration de la
capitale.

+ [continuer à explorer]
    -> scene_capitale_hub


=== scene_rancon_bandits ===
Vous leur tendez votre bourse. Les bandits la prennent, comptent les pièces, et ricannent.
"Merci pour ta générosité, imbécile ! Contribution volontaire à l'économie locale !"
Ils disparaissent dans l'ombre. Vous vous retrouvez sans argent, humilié.
Personne dans la ruelle n'a l'air choqué. Apparemment, c'est une scène banale ici.
N'ayant plus rien pour survivre en ville, vous êtes contraint de retourner au village, la queue
entre les jambes.

+ [retourner au village]
    -> scene_retour_capitale


=== scene_marchand_arnaqueur ===
~ marchand = true
Sur la place du marché, un marchand louche vous interpelle avec un sourire exagéré.
"Ah ! Noble voyageur ! J'ai exactement ce qu'il vous faut ! Offre exceptionnelle réservée aux
aventuriers de votre trempe !"
Il sort de sa poche un vulgaire caillou gris.
"Ceci est un Caillou Gravitationnel Légendaire ! Lancez-le en l'air et observez la magie
opérer ! Seulement 50 pièces d'or !"
Vous avez la désagréable impression d'entendre le même discours que tous les autres
pigeons avant vous.

+ [acheter le caillou]
    -> scene_acheter_caillou
+ [refuser poliment]
    -> scene_refuser_caillou
+ [négocier et demander une démonstration]
    -> scene_negocier_caillou


=== scene_acheter_caillou ===
Vous payez le marchand qui vous remet le caillou avec un sourire victorieux. Vous n'avez
plus d'argent.
"Alors, ce caillou magique, il fait quoi exactement ?", demandez-vous.
"Lancez-le en l'air ! Vous verrez !"

+ [lancer le caillou au-dessus de vous]
    -> scene_mort_caillou
+ [le garder précieusement sans le tester]
    -> scene_garder_caillou


=== scene_mort_caillou ===
Vous lancez le caillou en l'air avec enthousiasme. Il monte... puis redescend... et vous
retombe directement sur le crâne.
CLONK.
Traumatisme crânien. Vous vous effondrez. Le marchand ricane au loin. C'était juste un
caillou normal. Évidemment.

+ [Vous êtes mort]
    -> RESET


=== scene_garder_caillou ===
Vous rangez précieusement le caillou dans votre poche. Peut-être qu'il servira un jour... ou
pas. Vous n’avez plus d'argent, il est temps de rentrer.

+ [retourner au village]
    -> scene_retour_capitale


=== scene_refuser_caillou ===
"Non merci, je ne suis pas intéressé."
Le marchand vous regarde avec mépris. "Bah ! Crétin ! Tu rates l'affaire du siècle ! Va-t'en !"
Vous haussez les épaules et continuez votre chemin.

+ [continuer à explorer]
    -> scene_capitale_hub


=== scene_negocier_caillou ===
"Montrez-moi d'abord comment il fonctionne."
Le marchand hésite, puis sourit nerveusement. "Euh... en fait... c'est un caillou normal. Je
vous arnaquais. Mais vous êtes malin ! Respect !"
Il vous tape sur l'épaule. "Tenez, un vrai conseil : évitez la caserne militaire. Le sergent
recrute pour de la chair à canon."
Vous le remerciez et continuez votre route, plus sage.

+ [continuer à explorer]
    -> scene_capitale_hub


=== scene_noble_arrogant ===
~ noble = true
Vous vous promenez dans le quartier noble, admirant les somptueuses demeures. Soudain,
un homme richement vêtu vous bouscule violemment en passant.
"Pousse-toi, manant !" crache-t-il sans même vous regarder.
Les passants détournent le regard. Personne ne semble trouver ça choquant.

+ [s'excuser humblement]
    -> scene_humiliation_noble
+ [l'insulter]
    -> scene_mort_noble
+ [rester digne et silencieux]
    -> scene_courtisan
+ [l'ignorer et continuer votre chemin]
    -> scene_capitale_hub


=== scene_humiliation_noble ===
"Pardon, monseigneur, je ne voulais pas..."
Le noble se retourne et vous crache au visage. "Vermine ! Disparais de ma vue !"
Vous restez là, humilié, couvert de salive aristocratique. Les passants ricanent.

+ [retourner explorer la capitale]
    -> scene_capitale_hub
+ [retourner au village, honteux]
    -> scene_retour_capitale


=== scene_mort_noble ===
Vous insultez le noble vertement.
Le noble se fige. Son visage devient cramoisi. "GARDES ! EMPAREZ-VOUS DE CET
INSOLENT !"
Des gardes surgissent et vous traînent en prison. Vous êtes jugé pour offense à un noble.
La sentence ? Exécution publique. Votre tête finit sur un billot.

+ [Vous êtes mort]
    -> RESET


=== scene_courtisan ===
Vous ne réagissez pas. Vous restez droit, digne, sans un mot. Le noble se retourne, surpris
par votre calme.
"Hmm... Tu as du maintien, toi. Comment t'appelles-tu ?"
Vous lui répondez poliment. Il semble intrigué.
"Intéressant. Viens dîner chez moi ce soir. J'organise un banquet."

+ [accepter l'invitation]
    -> scene_fin_courtisan
+ [refuser poliment]
    -> scene_capitale_hub


=== scene_fin_courtisan ===
Vous passez la soirée au banquet. Des nobles parlent pendant des heures de leurs
problèmes insignifiants : la température de leur soupe, la couleur de leurs rideaux, les
ragots sur d'autres aristocrates.
Les semaines passent. Vous êtes nommé courtisan officiel. Votre rôle ? Hocher la tête
poliment, sourire au bon moment, et écouter des gens riches se plaindre de leur vie
parfaite.
Vous avez du prestige. Une belle demeure. Des vêtements luxueux.
Mais plus personne ne vous demande votre avis. On vous parle, mais on ne vous écoute
pas.
Votre âme meurt lentement d'ennui. Est-ce vraiment une victoire ?

+ [Victoire – Courtisan de la Haute Société]
    -> RESET


=== scene_sergent_recruteur ===
~ caserne = true
Vous arrivez à la caserne militaire. Un sergent massif, couvert de cicatrices, vous interpelle.
"Toi ! Tu as l'air costaud ! Tu veux servir ton royaume ? Gloire, aventure, richesse et
reconnaissance t'attendent dans l'armée ! Promotion rapide garantie !"
Il dit tout cela avec le sourire d'un marchand qui sent déjà la commission.

+ [accepter de vous engager]
    -> scene_mort_armee
+ [refuser poliment]
    -> scene_capitale_hub


=== scene_mort_armee ===
"Je m'engage !"
Le sergent sourit. "Excellent ! Signe ici."
Quelques jours plus tard, vous êtes envoyé au front. Pas pour une bataille glorieuse. Non.
Vous êtes de la chair à canon dans une guerre absurde contre des ogres et une hydre de
guerre.
Votre régiment charge. L'hydre ouvre ses sept gueules. Vous êtes dévoré en quelques
secondes. Votre dernière pensée : "J'aurais dû rester au village."

+ [Vous êtes mort]
    -> RESET
    
=== scene_retour_capitale ===
Vous retournez au village,l'esprit confus. Que faire maintenant ?

+ [pratiquer l'artisanat]
    ~ compteur_meuble += 1
    -> scene_meuble
    
+ {peche_locked == false} [aller à la pêche]
    ~ peche = true
    -> scene_sortie_village_foret
    
+ {marche == false} [aller au marché du village]
    ~ marche = true
    -> scene_marche_intro
