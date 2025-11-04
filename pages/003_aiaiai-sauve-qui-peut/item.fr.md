---
title: "AIAIAI, sauve qui peut !"
date: 20:00 11/03/2025

hero_classes: text-dark title-h1h2 overlay-dark hero-large
hero_image: banner.png
show_sidebar: true

taxonomy:
    category: 
        - blog
    tag: 
        - AI
        - opinion
        - job market
published: true
---

Récemment, Amazon a annoncé un plan de licenciement très important. Évidemment, ils nous annoncent dans le même temps ce que beaucoup redoutaient : il s'agirait d'un remplacement de nombreux postes par de l'IA. Alors, ça y est, on est foutus ? On peut fermer notre IDE et partir élever des chèvres dans le Larzac ?

Demandez-vous ceci : pour savoir si le Tonique Miracle du Dr Lewis aide vraiment à lutter contre la chute des cheveux, écouteriez-vous le marchand itinérant qui essaye de vous le vendre ? Vous fieriez-vous au témoignage de votre voisin, qui vient juste d'en acheter trois caisses, et qui essaye de vous en revendre une ? Cela ressemblerait à une idée saugrenue. Pourtant, quand on accorde de l'importance à ce que disent les big tech sur l'IA, c'est plus ou moins ce que l'on fait...

===

## Un monde où l'IA serait ROI

Les grands noms de la tech ont investi (ou plutôt, ont fait investir à leurs actionnaires) des sommes absolument vertigineuses en R&D dans le domaine de l'IA. Meta a annoncé avoir mis à elle seule 500 *milliards* de dollars sur la table dans cette optique. Et ce n'est qu'un exemple parmi d'autres.

Quand on lève autant d'argent, il faut promettre monts et merveilles. Et, même si jouer de la flûte fait partie des talents de tout entrepreneur parvenu à ce niveau, au bout d'un certain temps la rhétorique seule ne suffit plus : il faut trouver de la rentabilité. S'il n'y en a pas, il va falloir en inventer ! On se retrouve alors à mettre de l'IA partout où c'est possible, sans (parfois contre) l'avis des utilisateurs :
- On met un agent IA dans son OS via une mise à jour forcée (Microsoft)
- On propose un doublage automatique des vidéos par IA, tout en faisant évoluer ses CGU pour *interdire la même chose faite par des humains* (Google)
- ...

Voilà votre usage (qui n'a pas forcément changé) comptabilisable dans la colonne "retour sur investissements de l'IA"... habile !

## Ne dites plus "downsizing", dites "replaced by AI"

Amazon, comme tout le reste de la tech, n'a cessé de s'agrandir dans les années 2010. Mais, encore plus que le reste de la tech, le COVID-19 et ses confinements lui ont offert des opportunités, et Amazon a alors véritablement fait exploser la taille de son staff :

![Évolution du nombre d'employés chez Amazon entre 2010 et 2025](./amazon-growth-rate.png)

Maintenant, imaginez : vous êtes responsable de la communication chez Amazon. La direction vous annonce que l'on va devoir licencier 14000 personnes. Vous mobilisez tout votre intellect pour décider d'annoncer aux média que, soit :

1. "On a pris plein de monde dont on n'avait pas besoin à long terme, ils nous servaient juste à faire plus de profit dans un contexte où la demande était plus forte. La demande ayant baissé depuis, ces employés représentent un coût superflu, alors on les vire. Ici c'est une entreprise, pas une organisation caritative !"
2. "L'IA est la plus grosse ~~bulle~~ transformation que le monde ait connu depuis Internet ! Amazon fait partie des pionniers, et avant tous les autres, nous annonçons fièrement que dès le mois prochain, 14000 personnes seront remplacées par de l'IA !"

Je crois que vous n'hésiteriez pas longtemps. Quelle magnifique manière de faire d'une pierre deux coups : on transforme un signal ambigu envoyé aux investisseurs en un signal positif; et en même temps, on annonce en sous-texte que ça y est, les milliards investis dans l'IA payent des dividendes ! 

En 2025, ne dites plus "plan de licenciement", dites "remplacement par de l'IA".

## Développeur, serez-vous remplacé ?

Est-ce que les développeurs sont remplaçables par de l'IA ? Je répondrai à cette question le jour où je verrai une intelligence artificielle.

Est-ce que les développeurs sont remplaçables par des LLMs ? Ah, voilà une vraie question, merci !

### Nature des LLMs

"IA" est une facade marketing mise devant une technologie, certes très puissante, mais évoquant beaucoup moins la révolution de l'industrie et du monde tout entier : à savoir le Large Language Model, un modèle permettant de compléter n'importe quel texte par sa suite la plus statistiquement probable au regard d'une quantité colossale de textes trouvés sur internet, et ingérés par un réseau de neurones. C'est pratique, et ça peut faire gagner ou perdre en productivité selon comment on l'utilise, comme n'importe quel outil. Aussi puissant que cela puisse se révéler pour certaines choses, ça ne doit pas être pris pour ce que ça n'est pas. D'ailleurs, pour bien comprendre ce que c'est en peu de temps, je recommande l'excellente et brève [vidéo de Science Étonnante sur le sujet](https://www.youtube.com/watch?v=7ell8KEbhJo), qui parvient à vulgariser la fonctionnalité offerte par les chatbots type ChatGPT en allant directement à la source : le LLM sous-jacent (GPT, dans ce cas). À l'aide d'exemples percutants, il illustre la limite fondamentale de ces modèles. Je vous restitue ici l'exemple qui m'a le plus marqué :
- Écrivez à GPT "Christophe Colomb a découvert l'Amérique en" : il complète "1492". Merveilleux !
- Écrivez à GPT "Quentin Bonnet a découvert l'Amérique en" : il complète... "1492". Moins formidable...

C'est très logique, parce que ce n'est que *statistique* : la proposition "découvert l'Amérique en" est tellement corrélée à "1492" dans le corpus de textes ingérés par le modèle que cela constituait pour lui la suite la plus vraisemblable, peu importe le nom qui précédait. On vient de démontrer avec quelle facilité on pouvait faire dire quelque chose de faux à un LLM.

Si, comme moi, vous utilisez des LLMs quotidiennement dans le cadre de votre travail (pas que celui de développeur d'ailleurs), gardez cet exemple en tête. ChatGPT, Claude, ou n'importe quel chat bot de votre choix est *toujours* susceptible de vous dire des énormités avec aplomb. Ça n'est pas un bug, c'est une feature, c'est consubstantiel à la nature même du LLM. Cela explique aussi pourquoi on ne pourra jamais censurer véritablement un chatbot sans détruire sa fonctionnalité... mais c'est un autre sujet.

### Cas d'usage

Je ne suis pas un réfractaire par principe : si un nouvel outil permet de me rendre plus productif ou meilleur dans ce que je fais, je vais bien entendu l'essayer. Après une petite année d'expérimentation avec les LLMs dans le cadre du développement (j'ai testé les bots en ligne type ChatGPT, mais aussi Cursor et plus récemment Claude Code), j'ai identifié des usages qui me semblent efficaces, et d'autres beaucoup moins. Je reviendrai là-dessus plus en détail avec des études de cas concrets dans un billet ultérieur, je vais ici simplement vous livrer ma synthèse. En bref : **le LLM est votre outil, pas votre collègue** (c'est aussi une bonne façon de formuler pourquoi il ne peut pas, par nature, vous remplacer). Et cet outil me permet régulièrement d'être plus efficace, via un usage que je pourrais répartir en trois grandes catégories :

1. Pour dégrossir la recherche préliminaire sur un sujet (Google++)
2. Pour réfléchir sur un design dont on n'est pas certain et que l'on veut mettre à l'épreuve (brainstorming de fortune)
3. Pour coder quelque chose, avec des instructions claires et un résultat mesurable

Dans tous les cas, la supervision, la vérification, le contrôle... font partie intégrante du process (à moins que vous ne croyiez avoir découvert l'Amérique en 1492 bien sûr). On se rend alors compte, quand on tient compte du temps de vérification et de correction quand c'est nécessaire (le LLM produit *très* rarement quelque chose de satisfaisant après un seul prompt, il y a très souvent besoin d'allers-retours) que les gains de productivité sont bien plus marginaux que l'on aurait pu l'espérer. Néanmoins, je les utilise, et je continuerai à le faire... jusqu'au jour où ils nous seront vendus à leur vrai prix d'exploitation, mais c'est, une fois encore, un autre sujet ! 

### En conclusion

Vous ne serez pas plus remplacés par un LLM que vous n'avez été remplacés il y a dix ans par Stack Overflow ; par contre, vous allez peut-être utiliser un LLM autant que l'on utilisait Stack Overflow par le passé (en fait, ça a déjà commencé). Mais vous restez nécessaire, en tant que "sachant" qui garantit que ce qui est livré a du sens et ne va pas faire tomber la prod. On ne peut pas renvoyer un LLM pour faute professionnelle ; autrement dit il faudra toujours un humain pour prendre les décisions. Que le code ait été écrit 100% à la main, qu'il ait été largement auto-complété par l'IDE, ou qu'il ait été écrit en grande partie par un LLM n'y change rien.

Le jour où c'est une IA qui appuie sans supervision sur "deploy to prod", là... mais, attendez une seconde, c'est pas le scénario de Terminator, ça ?
