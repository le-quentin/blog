---
title: "Tales of Skynet : sommes-nous foutus ?"
date: 13:00 10/08/2025

hero_classes: text-light title-h1h2 overlay-dark hero-large parallax
hero_image: banner.webp
show_sidebar: true

taxonomy:
    category: 
        - blog
    tag: 
        - AI
        - opinion
        - engineering
published: false
---

Mon père a fait l'IUT de Lyon en 1980, et on lui disait déjà : "ne faites pas carrière dans la programmation, les Chinois le feront bientôt aussi bien et pour moins cher". J'ai moi-même fait l'IUT de Dijon en 2010, et on me disait alors : "ne faites pas carrière dans le développement, les Indiens le feront bientôt aussi bien et pour moins cher". Je suis prêt à parier que les fils spirituels de ces profs disent aujourd'hui la même chose aux étudiants à propos de l'IA : ont-ils tort ?

===

Au delà de l'anecdote, les liens entre la main-d'œuvre étrangère bon marché et l'IA sont évidemment questionnables. Ce qui est intéressant ici, et permet selon moi de rapprocher les deux cas de figure, c'est la volonté de se débarrasser des développeurs dès que possible, et la vision du métier sous-jacente que cela traduit.

## Valeur du code source

Un ancien collègue m'a dit un jour qu'un bon moyen de se trouver une bonne boîte en tant que dév, c'était de déterminer la chose suivante : cette entreprise voit-elle l'IT comme une charge, ou comme un investissement ? Autrement dit, est-ce pour elle avant tout un coût, ou générateur de profit ?

Sage conseil. Et, si la réalité est bien entendu plus nuancée que cette simple dichotomie, je crois pouvoir affirmer après avoir travaillé avec une dizaine d'entreprises différentes que cela traduit bien une réalité. Dans les faits, on pourra aisément ranger son entreprise dans l'une des deux cases : et en général, la culture informatique et technique (ou son absence) est à l'avenant.

Mais même pour une entreprise dont le cœur d'activité est de vendre du logiciel, la question n'est pas toujours si vite tranchée. En fait, cela masque une question sous-jacente et plus profonde, que l'on pourrait généraliser à l'IT dans son ensemble mais que l'on va ici centrer sur le logiciel pour simplifier : est-ce qu'un logiciel est réductible à son code source ?

Si on faisait dialoguer un PO et un dév consciencieux sur le sujet, on obtiendrait sûrement quelque chose dans ce style :

> PO : évidemment que non, un logiciel ce n'est pas son code source ! Mon client, il s'en contrefiche de savoir si son logiciel est codé en Fortran ou avec la dernière stack technique à la mode, tout ce qu'il voit c'est ses fonctionnalités et sa fiabilité !
> Dév : évidemment que si, un logiciel c'est son code source ! Non seulement lesdites fonctionnalités sont l'émanation de ce code source, mais en plus un logiciel ce n'est jamais figé ! Dès qu'il faudra le faire évoluer, que ce soit pour y intégrer de nouvelles fonctionnalités ou pour combler de nouvelles failles de sécurité, le code source et sa qualité seront déterminants pour garder les coûts bas et garantir la non régression.

Alors, qui a raison ? Comme bien souvent, ça dépend... À trop décorréler le logiciel de son code, on finit par obtenir d'horribles machines inmaintenables, et l'utilisateur final en pâtira... À l'inverse, à trop s'obstiner sur le code lui-même, en oubliant que notre utilisateur n'est pas la machine qui l'exécutera, on finit par faire de l'esthétisme, de l'art à destination d'autres développeurs plutôt que des utilisateurs que l'on était censés aider.

Mais alors, finalement, est-ce que la promesse de l'IA ce n'est pas de nous aider à nous affranchir du code source en tant que tel, ne passant plus que par du langage naturel pour interagir avec elle ?

## Programmer sans coder

Avant de nous demander si l'IA répond (ou va répondre) à cette promesse, il est intéressant de remarquer que cette histoire n'a rien de nouveau. Depuis l'invention du premier langage assembleur, l'histoire du développement informatique est une longue succession d'abstractions, nous éloignant de plus en plus de la machine et son code binaire, pour se rapprocher de plus en plus de l'humain (bas niveau vers haut niveau). Ne paraîtrait-il pas logique qu'au bout de ce tunnel se trouve le langage naturel, autrement dit le langage humain ordinaire ?

Ce fantasme de pouvoir un jour "programmer sans coder" a fait tourner bien des têtes : chaque génération a vu sa cohorte de solutions promettant d'atteindre ce but... et elles ont systématiquement échoué à tenir cette promesse. Dans les années 90, les ERP (SAP étant le plus connu d'entre eux) promettent la fin des systèmes d'information, les remplaçant par un progiciel générique et hautement configurable. Sur le papier, l'idée peut sembler séduisante : toutes les entreprises ont des points communs, et de fait la plupart d'entre elles doivent utiliser des process très similaires. SAP fonctionne, et toujours aujourd'hui, des entreprises l'utilisent. Mais alors, pourquoi trouve t-on toujours des développeurs pour coder des SI ? C'est très simple : la généricité d'une solution fait proportionnellement (et je dirais même exponentiellement à partir d'un certain seuil) grimper sa complexité. L'ambition de faire rentrer tous les SI dans un seul modèle ne pouvait que produire une usine à gaz... qui allait donc demander des experts pour la mettre en place et la paramétrer. On se retrouve à faire appel à des professionnels du "langage SAP" pour manipuler ce système, ce qui est bien loin de l'ambition de départ.

Dans la décennie 2010 débute la mode des solutions "no-code". De nouveau, emballement pour certains, psychose pour d'autres : cette fois, ça y est, c'est la fin des développeurs ! 15 ans plus tard on peut faire le bilan et constater que si certaines solutions sont en effet très puissantes (j'ai très envie de me pencher sur n8n, personnellement)... c'est toujours bel et bien des développeurs que l'on cherche pour configurer et intégrer ces solutions ! Le lexique lui-même s'est adapté, on parle souvent de "low-code" plutôt que de "no-code", de nos jours.

Tout ceci est finalement assez logique : programmer sans coder est un oxymore. Si l'ordinateur, autrement dit la machine de Turing, a révolutionné l'électronique, c'est qu'il permettait que le circuit devienne le support d'une exécution arbitraire et paramétrable... en fait, la machine de Turing elle-même est générique ! Un langage Turing complet (autrement dit, n'importe quel langage procédural ou fonctionnel moderne) permet par définition de "tout faire". On est en présence d'une machine générique complexe (mais déterministe) qui requiert des personnes formées à interagir avec, afin d'en tirer un usage arbitraire. Les solutions prétendant se substituer à ce processus sont soit bien loin d'être Turing complete (auquel cas il ne faudra pas bien longtemps pour trouver des use cases non prévus), soit tellement compliquées à manipuler qu'on a aussi vite fait d'apprendre le Python.

## Coder avec l'IA

Mais l'IA dans tout ça ?

Effectivement, les LLMs peuvent aisément être vus comme le dernier épisode de cette longue Histoire. Et beaucoup de gens très très intelligents sont formels : cette fois, c'est différent ! 

Eh bien, je ne crois pas. Pourquoi ? En bref, pour la raison expliquée ci-dessus : à la fin des fins, le meilleur moyen d'interagir avec notre ordinateur, c'est via un langage Turing complet. Les LLMs sont une technologie fabuleuse avec un très gros potentiel pour réaliser, sans aucun doute, plein de belles choses ; mais programmer en langage naturel reste un oxymore. En effet, si le code par LLM interposé permet lui aussi de "tout faire" comme un langage Turing complet, on sacrifie l'autre caractéristique essentielle de ces langages : leur déterminisme (une même entrée produira toujours la même sortie). Le non déterminisme d'un LLM n'est pas un bug, c'est une feature. C'est consubstantiel à ce qui fait l'intérêt de cette technologie. Mais c'est parfaitement contradictoire avec le concept même de programme informatique. Une autre façon de le dire, c'est que la grammaire de nos langages humains est bien trop ambigüe pour la programmation ; tous les langages informatiques, aussi haut niveau soient-ils, sont un exercice de formalisation pour précisément lever toutes les ambiguïtés.

Dès lors qu'on est convaincu de cela, tout s'éclaire : nous ne pouvons pas développer en langage naturel, si les développeurs n'ont pas encore disparu ce n'est donc pas parce que l'IA n'est pas encore assez puissante, mais bien parce qu'elle n'est pas un langage de programmation. C'est une différence de nature et non de degré. Ouf, sauvé !

Pas tout à fait...

## La dystopie

### L'IA à la place du développeur ?

En effet, cette vision de développeur n'épuise pas le problème.

Le fantasme de certains, ce n'est pas de remplacer le langage de programmation par l'IA, mais bien *le développeur lui-même*. Le PO s'adressera à l'IA en langage naturel et il recevra du code. C'est un process effectivement non déterministe, mais pas plus que de confier une tâche à un développeur, qui peut lui aussi se tromper.

Poussons l'exercice de pensée au bout, façon démonstration par l'absurde : imaginons une équipe du futur où le PO est entourée non pas de développeurs mais d'agents IA, auxquels il va directement donner des instructions.

La suite : 
- finir la démonstration par l'absurde pour montrer que cette personne sera soit elle-même développeur, soit irresponsable car incapable de comprendre ce que fait l'IA... et on ne responsabilise pas une IA, donc faut un être humain responsable.
- Mais alors, quelle place pour l'IA ? Eh bien, c'est pas à inscrire dans la suite des technos censés remplacer le code, mais dans la suite des technos censées l'assister : les compilateurs, les moteurs d'auto-complétion, etc.
- Trouver ou caler l'histoire de Terminator : en intro de l'article si c'est plus sympa, ou en début de cette dernière section ? Peut-être qu'il faut éclater en deux articles, à réfléchir (un sur le code source et sa valeur, un sur l'IA et la reponsabilité ?)

À découper en plusieurs articles ?
- Commencer par un article pratique sur un cas d'U de l'IA ? (exporter la conv avec claude code sur l'operationId prefixé `claude --resume`). Les conclusions sur comment utiliser l'IA : surtout pas comme un développeur. Seul un développeur l'utilise, et il faut la considérer comme on considérerait un junior fraichement diplômé : on lui donne une tâche simple, et on contrôle son résultat. 
- Valeur du code source (offshorisation)
- L'absurde idée de programmer sans coder (machine de Turing et grammaire non ambigüe)
- La question de la compétence et donc de la responsabilité (Skynet)
