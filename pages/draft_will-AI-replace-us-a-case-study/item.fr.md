---
title: "L'IA va t-elle nous remplacer : étude de cas"
date: 10:00 08/17/2025

hero_classes: text-light title-h1h2 overlay-dark hero-large parallax
hero_image: banner.jpg
show_sidebar: true

taxonomy:
    category: 
        - blog
    tag: 
        - AI
        - sideprojects
        - homelab
        - engineers
published: false
---

Comme la plupart de mes pairs développeurs, je me pose certaines questions de manière récurrente depuis quelques temps : est-ce bientôt la fin du métier de développeur ? Un PO chevronné augmenté par IA va-t-il bientôt pouvoir remplacer une équipe de développeurs ? Est-il enfin temps d'aller élever des chèvres dans le Larzac ?

Plus simplement : comment continuer à apporter de la valeur maintenant et à l'avenir, dans un monde où l'IA va potentiellement automatiser une part grandissante de nos tâches ?

Je me propose ici d'explorer très brièvement cette question à travers un cas concret : la mise en place d'un système de logs centralisés dans mon homelab.

===

Grandes lignes de l'article :
1- TL;DR sur mon homelab, et sur ce que je souhaitais ajouter
2- Bon cas d'utilisation de l'IA : c'est rébarbatif, c'est des technos largement adoptées et éprouvées, et je peux gagner du temps sur la lecture de longues documentations pour sortir rapidement un proto à peaufiner ensuite
3- Étape un : c'est cool ! J'ouvre cursor, et j'ai instantanément des updates pertinentes pour installer Grafana+Loki. Bon, je dois adapter moi-même certaines règles DNS dans mon système legacy pour éviter les conlflits de route avec un Grafana pré-existant que Cursor a loupé. Je dois aussi corriger des broutilles (des noms de volumes qu'il a mal préfixé). Mais sinon, ça marche. Cool, on gagne du temps... mais ensuite je vais à la source de vérité (github du projet), et je vois que je suis deux versions majeures en retard. Je mets donc à jour la version, ainsi que la config avec ce qui est maintenant préconisé par Grafana. 
4- Étape deux : faut mettre la vraie fonctionnalité en place maintenant, et scrapper les logs docker ! Cursor me sort une conf Promtail qui a l'air ok. Sauf que là encore je vais vérifier, et même si ça a l'air fonctionnel, c'est pas future proof : EOL annoncée en 2026. C'est remplacé par Alloy. 
5- Je demande donc à Cursor de voir s'il peut trouver suffisament d'infos dans les sources officielles pour me faire un setup avec Alloy. Il patine à curl des adresses mortes pendant quelques temps, jusqu'à ce que je l'interrompte, lui donnant la doc officielle moi-même. Il me sort un premier setup basé uniquement sur le filesystem, qui scrape les logs dockers directement dans /var/log/docker/*... je suis étonné et je décide donc de creuser la doc moi-même, et effectivement : pour scraper du Docker, Grafana recommande de passer par la socket docker directement, ce qui offre des fonctionnalités intéressantes supplémentaires... ceci dit, monter la socker docker, je sais que c'est quelque chose de pas hyper secure (pour faire simple : ça viole l'encapsulation des containers), mais bon dans le contexte de mon Homelab LAN only, c'est pas un gros problème (mais bien noter que Cursor me dit n'importe quoi à ce sujet).
6- Je commence donc à entrevoir la solution finale : un container Alloy qui va auto-discover mes container dockers, et je pourrais me baser sur un label (à la manière de traefik) pour savoir quels containers scraper. Comme ça, mon role homelab-app pourra toggle la feature d'une manière découplée. Je suggère ça à Cursor, qui me dit que c'est une bonne idée (merci l'ami !), et qui m'implémente le truc sans souci.

Tirer une conclusion sur les forces/faiblesses et les limites : en tant que senior, ne SURTOUT pas voir ça comme son maitre (sinon on devient débile en à peine quelques années, et faudra pas venir pleurer quand nos clients/employeurs auront compris qu'on n'apporte plus aucune valeur), mais plutôt comme une armée de stagiaires ultra-motivés et volontaires à notre service h24.
