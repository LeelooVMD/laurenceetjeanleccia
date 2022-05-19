# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying articles'
Article.destroy_all

puts 'Destroying texts'
Text.destroy_all

puts 'Destroying users'
User.destroy_all

puts 'Destroying collections'
Collection.destroy_all

puts 'Destroying pictures'
Picture.destroy_all

puts 'Destroying inbetween'
Inbetween.destroy_all

puts 'Adding collections'
les_iris = Collection.create(name: 'Les Iris')

puts 'Adding pictures'
iris1 = Picture.create(name: 'Les Iris 1.jpg')
iris2 = Picture.create(name: 'Les Iris 2.jpg')
iris3 = Picture.create(name: 'Les Iris 3.jpg')
iris4 = Picture.create(name: 'Les Iris 4.jpg')
iris5 = Picture.create(name: 'Les Iris 5.jpg')
iris6 = Picture.create(name: 'Les Iris 6.jpg')

puts 'Adding Inbetween'
Inbetween.create(pictures_id: iris1.id, collections_id: les_iris.id)
Inbetween.create(pictures_id: iris2.id, collections_id: les_iris.id)
Inbetween.create(pictures_id: iris3.id, collections_id: les_iris.id)
Inbetween.create(pictures_id: iris4.id, collections_id: les_iris.id)
Inbetween.create(pictures_id: iris5.id, collections_id: les_iris.id)
Inbetween.create(pictures_id: iris6.id, collections_id: les_iris.id)

puts 'Adding users'
user1 = User.create(email: "lauleccia@gmail.com", password: ENV["USER1_PASSWORD"], admin: true)
user2 = User.create(email: "lilasviolettemarchand@gmail.com", password: ENV["USER2_PASSWORD"], admin: true)

puts 'Adding articles'
Article.create(title: 'Exposition Laurence LECCIA & Jean LECCIA', picture: 'expo-montpellier.jpeg', content: 'Laurence LECCIA & Jean LECCIA exposent à Montpellier les 2,3,9 et 10 juin 2018 de 11h à 13h & de 15h à 20h.
8 Rue Foch – Entrée libre', user_id: user1.id)
Article.create(title: 'Exposition Laurence LECCIA à Sète', picture: 'sete-invitation.png', content: 'Exposition du 16/10/2015 au 25/10/2015 au 16 Rue Gabriel Péri.', user_id: user1.id)
Article.create(title: 'Exposition "Entre les chalets" à Gruissan', picture: 'gruissan-exposition.jpeg', content: 'Exposition de Laurence Leccia en 2016 à Gruissan Plage.', user_id: user1.id)
Article.create(title: 'Exposition Laurence LECCIA à Montpellier', picture: 'montpellier-exposition.jpeg', content: 'Exposition en 1995 à Les Passagers de l\'art au 3 Rue Nozeran.', user_id: user1.id)

puts 'Creating Laurence texts'
Text.create(title: 'Laurence Leccia  – 2015', owner: 'Laurence', content: "A l’École d’Architecture, j’ai été formée à un dessin classique : la perspective, la théorie de la couleur, l’ombre et lumière, les proportions dorées. J’ai appris le trait d’équerre, un dessin au cordeau, une vision orthogonale.
 \r\n
 \r\n
 Avec l’École des Beaux Arts , je me suis tournée vers l’art contemporain. J’ai cherché à me départir de la rigidité académique. J’ai voulu le trait tremblé, les embus indépendants, tous les aléats, les champs colorés …
Je redoute la finitude du dessin, le trait « léché », hygiéniste, prévisible, parfait.
Je cherche la touche en suspend, l’inachevé, l’erreur créative, les imperfections. Le regard du spectateur peut alors terminer, imaginer ce qu’il voit, il peut se projeter.
\r\n
\r\n
A l’école des Beaux Arts, il était alors de bon ton de dire que la peinture était morte.
\r\n
Marcel Duchamp en rivalité et moins doué que sa fratrie dénigrait la peinture,  «bête comme un peintre». Le sort de la peinture aurait été décidé juste par cette quête d’exister …
\r\n
Dans les années 60, il était donc désuet d’utiliser le pinceau, le châssis, la toile et pour les conservateurs du conservatisme d’aujourd’hui, toujours… les adorateurs de porte-bouteille … Qu’importe !
\r\n
J’ai persisté et résisté car je n’ai pas fait l’école des Beaux Arts pour devenir une artiste, ni pour être sous les feux mais juste pour peindre.
\r\n
J’ai tracé ma voie loin des idées mode de l’art institutionnel. Je ne suis pas une peintre subventionnée donc je n’ai pas à rendre compte d’une certaine forme d’art.
\r\n
\r\n
La peinture est un miroir pour soi-même. Celui qui regarde, voit avec son histoire, sa culture et engendre de l’amour ou du désamour pour ce qui sourd de la toile.
\r\n
Le choix d’un sujet, bavard et silencieux me permet une liberté en peinture.
\r\n
\r\n
Rien n’est déterminé d’avance dans ma peinture. Il ne peut y avoir de stratégie pour qu’une toile soit réussie.
\r\n
Dans mon travail, je mets tout en place pour favoriser la surprise, les aléas. J’utilise le fortuit.
\r\n
Quoi de plus ennuyeux que de savoir d’avance ce qui va arriver !
\r\n
J’aime ce danger de pouvoir échouer, tout perdre ou … cette grâce de voir tout se construire avec une partie de moi-même que je n’utilise que là, dans l’instant avec la peinture sur la toile …")

Text.create(title: 'Marcel Leccia – 2014', owner: 'Laurence', content: "L’œil se promène d’une toile à l’autre avec une application un peu nerveuse parce que la séduction agace. Qu’est-ce qui fait que « ça marche » ?
\r\n
Panneaux de formats très variables (300 x 300 cm , 40×40 cm), presque toujours carrés :  artichauts, bulbes, racines ; et fleurs, surtout des fleurs. Nous nous en tiendrons à celles-ci, mais on ferait des observations équivalentes pour tout autre « motif ».  Une, deux ou le plus souvent quatre fleurs. Si elles sont deux ou quatre, on les trouve disposées dans des carrés égaux. Volontiers rouges ou jaunes. Des dizaines et des dizaines de fleurs ; et pourtant, impossible d’ironiser sur la répétition : elles sont là et bien là, mais vont bientôt laisser la place à la peinture.
\r\n
\r\n
À cent mille lieux du naturalisme, elles déclinent la ténacité du peintre au travail, dont on comprend qu’il pourrait n’en finir jamais. La fleur dans tous ses états, variations infinies de la fleur travaillée par la main de l’œil.
\r\n
Sur de la toile au grain sensible, on va de la fleur débutante, boutons corsetés, à la fleur épanouie en larges corolles aux contours aléatoires. De l’opacité la plus sévère à la transparence la plus diaphane : avec cette obstination avisée qui ne lasse ni ne se lasse, elles offrent une matière autrement riche que celle d’aquarelles pour lesquelles elles pourraient, distraitement, se faire passer : pigments dilués dans de l’acétone ou du white spirit, on a des huiles aux tonalités extraordinairement subtiles. Rares pistils de verts, gris ou bruns inconnus, noires étamines serrées au cœur de la corolle, parfois une tige vert cru. Un fond de peu de matière qui n’est là, on dirait, que pour capter toute l’attention de l’œil spectateur. Ces corolles débordent de suc, d’énergie : dispersion de météorites, explosions solaires, pollen épandu par le vent. L’idée vient, en passant, qu’on serait devant un phénomène cosmique ou de fécondation vu au microscope.
\r\n
Et rien, jamais, ne s’y répète sinon la leçon d’un peintre au travail.
\r\n
Cependant, l’obstination que racontent ces dizaines de fleurs affirme que quelque chose résiste. C’est que la vie est inépuisable. Ainsi, toutes ces fleurs travaillées disent la profusion amoureuse d’une leçon de vie inépuisée.
On jubile alors devant-dans ces champs de toiles travaillées de telle sorte que chacune vaut pour elle-même et compose avec les autres. Elles réjouissent par leur éclat et leur disponibilité à s’offrir. Et elles en imposent par la rigueur du travail auquel elles se prêtent. Turbulence contenue, effervescence contrôlée.
\r\n
Et si l’on prend enfin un peu de son temps au plaisir, on s’aperçoit qu’on est en train de prendre une leçon de vue : on apprend à mieux voir la peinture, celle-ci et les autres, le travail du peintre et ce qui travaille le peintre.
\r\n
\r\n
Apprendre à voir le monde et la peinture, en éprouver étonnement et plaisir ? On a bien affaire, en effet, à un peintre.")
Text.create(title: 'Jean-Pierre Rose, historien d’art – 2014', owner: 'Laurence', content: "La Peinture serait donc morte, surtout la figurative ?
\r\n
Peindre en plus des natures, mortes elles aussi ! Quel sous-genre !
\r\n
\r\n
Rassurez vous, la Peinture, bonne fille en a vu et entendu bien d’autres. Elle est stricte affaire entre le regardeur et l’artiste et se soucie peu des petits terrorismes dépassés.
\r\n
La preuve :  des fleurs, multipliées, explorées, magnifiées. Un catalogue sensible de beaux regards attentifs : l’oeuvre de LAURENCE LECCIA.
\r\n
Il ne s’agit pas de séries embaumées pour naturalistes, mais de célébration de cette discrète, bien que vive, existence végétale. Avec ce supplément d’âme porté par le regard  de Laurence,de fluidités orientales , de champs colorés actuels.
\r\n
\r\n
Célébrant avec art, ce que dans notre folie nous pourrions, un jour, perdre.")
Text.create(title: 'Laurence Leccia – Juillet 2007', owner: 'Laurence', content: "« Si à l’époque je me suis inscrite à l’Ecole des Beaux Arts ce n’est pas pour devenir une artiste mais pour devenir peintre. L’art officiel veut se débarrasser du sensible pour privilégier l’idée comme si cela s’opposait. Mon travail est à l’opposé, empirique, issu de l’expérience. Il est aussi une recherche de l’esthétique dans son sens premier qui en grec veut dire sentir.Je m’organise pour construire mon travail de proche en proche, quelques paramètres sont décidés par avance. Je veux juste donner de l’énergie.
\r\n
La peinture ne se résume pas au sujet.
\r\n
\r\n
Le sujet « fleurs », sensuelles, érotiques pour les uns, décoratives, esthétisantes, séduisantes, pour les autres, ou encore chargé du féminin, de l’épanouissement, de narcissisme ou de la futilité sont pour moi juste un prétexte qui me permet d’explorer mon intention de prédilection : l’aléatoire, le fortuit, l’accident.
\r\n
Avec ce sujet bavard, chacun pose son histoire sur le miroir de la toile, comme une crème de beauté, chacun prend soin de soi avec l’énergie de la peinture. Mais ce qui m’attire, c’est ce que ce sujet me permet : rendre compte de l’informel, oublier la représentation pour être au plus près de la surprise, du plaisir comme on déballe un cadeau.")
Text.create(title: 'Jean-Pierre Rose, historien d’art – Juillet 2007', owner: 'Laurence', content: "« Trop féminin ? Il y aurait donc une peintre masculine et une peintre féminine ?
\r\n
Et qui plus est de fleurs ! Renvoyons d’abord dos à dos machos intégristes et féministes endiablées.
\r\n
Pour ce qui est des fleurs serons nous aussi sectaires que l’Académie qui vit d’abord dans la nature morte une sorte de sous genre ? Elle sut tout de même bien se rattraper, en recevant sous Louis XVI la belle fleuriste Vallayer-Coster. Un règne avant, Madeleine de Basseporte peignait les fleurs pour les Vélins du Roy.
\r\n
\r\n
Il vous faut du plus membré allez donc faire un tour chez Georgia O’Keefe et ses yuccas ou vers les jaillissements de Louise Bourgeois. Alors la paix ! Et regardons !Allier une vérité dans la fragilité d’un pavot tremblant a l’allusion de la tige envoyée dans une touche voilà l’art de Laurence.
\r\n
Composer de grandes machines dans des cadrages raffinés cousus envers-endroit et somptueux. Savoir traduire les tentations de l’aquarelle dans les glissements de « couloured-fields » est aussi une belle prouesse.Bref quand le retour à la nature est de cet ordre là, je souscris et vous invite ! Tous à la Chapelle ! »")

# ------ Jean Leccia ------

puts 'creating Jean texts'
Text.create(title: 'Jean LECCIA, 2015', owner: 'Jean', content: '« Le peintre est un catalyseur. Ce qu’il propose, c’est l’auberge espagnole, chacun y trouve ce qu’il y apporte. Je ne raconte rien, aucun message à faire passer. Je propose des jeux de couleurs imprégnés de l’endroit où je vis, qui font naître une émotion propre à chacun … ».')
Text.create(title: 'Jean-Pierre ROSE, Février 2007', owner: 'Jean', content: 'Reprenons la vieille formule : « ce n’est qu’un œil mais quel œil ! »

Une fois encore Jean Leccia va fouiller là où nous ne l’attendions pas.

Cageots et poireaux, voilà qui, au temps des Académies, l’aurait envoyé fort bas, au seuil de la hiérarchie des genres et dans la nature morte même, au trente sixième dessous.

Soyons francs, suivant l’actuel penchant pour les jardins et leurs séquelles (le potager, le marché aux légumes) nous ne manquons pas de pèlerins pour enfiler la bure franciscaine et louer la simplicité, le petit, le minuscule même. Avec la nostalgie comme boutique et les retraités – ancien régime – comme public. Honneur donc à Leccia, grand « éveilleur ». Honneur et reconnaissance, grâce à lui nous voyons mieux, sans jargon, sans artifice, mais dans une matière superbe, au mat sincère, aux frontières éclairantes.

La vérité des bois assemblés, le glissement – du blanc au vert – des fibres, ou celui, vie essentielle, du signe à l’objet.

À voir et à revoir, subtilité des apparences, affirmée par celui qui sait comme Lhote que : « construire ne consiste pas à édifier des digues pour retenir le plus possible de matière terrestre… mais consiste plutôt à dresser des pièges subtils pour l’esprit, quelque chose comme une échelle de Jacob pour permettre à nos anges intérieurs de mieux s’évader.')
Text.create(title: 'Jean-Pierre ROSE, 1994', owner: 'Jean', content: 'De Leccia donc, plutôt dresser le catalogue des plaisirs à lui dérober :

– Manger la couleur à même la nappe dans la densité du pigment non voilé, crissante infinité d’aspérités sensibles : terre, terre, terre.

– Profiter pleinement de la justesse de son choix, de l’arrêt sur l’image, mais d’une lucidité exemplaire : voilant, tatonnant, laborantin du geste et de l’instrument, mattant en jeu sur l’équilibre d’un millimètre l’équilibre du monde.

– Parfois la force reconnaissable “al natural” avec son évidence comme seul alibi.

– Le silence : ni les bruits de la gestation, ni ceux de la presentation au temple, son manifeste et silence.

– Voilà bien des mérites, assortis de la rare politesse d’une désinvolture feinte qui commande que l’on aborde son oeuvre comme lui-même en sort, sur la pointe des pieds.

– Tendresse immense pour le geste suspendu, Leccia est plus que tout instaurateur ou restaurateur de l’imminente dignité de l’image.')
Text.create(title: 'Claude Henri ROQUET, Juin 1977', owner: 'Jean', content: 'Ici, parler de la peinture en termes de plaisirs, distincts et confondus. Celui que tu goûtes à reconnaître un monde heureux, le tien : marmites et légumes dans la lumière terrestre, dans la clarté jardinière, paysanne ; tables assises pour l’amitié, modeste cérémonie de sièges, stores tendus entre chambre et ciel, nuage et lit, balcon voguant tranquille à travers le siècle. Et l’autre plaisir : celui que tu goûtes quand par magie l’ingrate matière se fait couleur, forme, présence – peinture. Leccia, dans la grâce d’une sorte de sourire, balance de la potiche peinte au pur jeu de peindre, du simple délice des formes à cette fenêtre ouverte sur la gloire modeste d’habiter ici.

Mais chacun sait quand peinture du moins, le plaisir ne va jamais sans ascèse, ni l’évidence sans calculs. D’où ces ruses de la peinture, ces formes qui se glissent l’une sous l’autre, l’une au bord de disparaître sous l’autre, mais demeurant. D’où ces incertitudes savantes de la couleur, ces failles, ces fissures, où paraît, nu, le talus de la toile. L’amour de la peinture est aussi celui de la toile, souvent : bonheur des draps et de la nappe. Douceur des corps, et des fruits. Mais voici que nous retournons au plaisir.

Le peintre, non plus que les autres hommes, n’aime qu’on le salue d’un nom qu’il ne porte pas. Je tairai donc l’héritage lumineux qui se reconnaît ici.')

Text.create(title: 'Jean Édouard Robert', owner: 'Jean', content: 'Nous sommes étranges. Nous cherchons à reconstituer nos rêves et à effacer nos cauchemars. Nous sommes étranges à vouloir critiquer l’originalité et à nous satisfaire de la laideur.

Nous sommes étrangers au monde de Jean Leccia et en cela, nous avons raison. Raisonneurs que nous sommes, il nous est difficile d’appréhender un monde où le rêve se touche, où le cauchemar ce colore.

Jean Leccia a du génie. Il le sait. Nous aussi.

Fi de nos raisons et de son talent, nous voilà face a son œuvre. Elle nous permet de connaître l’âme d’un ange en enfer.')
