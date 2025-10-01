---
title: Bienvenue sur mon blog
date: 13:29 08/11/2025

hero_classes: text-light title-h1h2 overlay-dark hero-large parallax
hero_image: banner.jpg
show_sidebar: true

taxonomy:
    category: 
        - blog
    tag: 
        - misc
        - blog
published: true
---

Vous y trouverez :
- Le récit de mes aventures dans l'IT, projets professionnels et personnels confondus.
- Des articles sur les bonnes pratiques d'ingénierie.
- Le partage de mes outils/technologies favoris.
- Diverses réflexions sur mon métier, sur son avenir... tant que ça a un rapport plus ou moins distant avec l'IT, ça a sa place ici !

===

Les articles seront systématiquement rédigés en anglais, et ils seront également traduits en français lorsque je le pense pertinent, comme c'est le cas pour ce premier article.

J'estime que tout ce qui touche à l'IT a vocation à être partagé en anglais pour pouvoir toucher le plus grand nombre. Pour les cas où je souhaite également m'exprimer dans ma langue maternelle, je le ferai en écrivant moi-même directement en français, et non via des traductions automatiques que je trouve bien trop souvent approximatives, aux tournures non naturelles, et qui constituent selon moi un non respect du lecteur.

!!! Il n'y a pas (encore ?) de section commentaires sur ce blog. Mais si vous souhaitez réagir à un de mes billets, ou que vous voulez simplement me contacter, vous pouvez le faire via [LinkedIn](https://www.linkedin.com/in/quentin-bonnet-1235a8b8/) ou [email](mailto:quentin@bonnet.software)

### Stack technique

Ce site fonctionne avec [grav](https://github.com/getgrav/grav), un CMS open source simple et pratique. Il a été designé par ma merveilleuse épouse Caroline Bonnet, plus connue des professionnels sous le nom de [Caroline Monin](https://cmonin.dev).

Ce qui est génial avec grav, entre autres, c'est qu'il permet de gérer son contenu via de simples fichiers texte. Le présent blog est une arborescence de simples fichiers .md, stockés sur un [repo git dédié](https://github.com/le-quentin/blog), et déployés très facilement sur le site via sftp. Cela me permet d'obtenir tous les avantages de git, et d'obtenir un blog "vendor agnostic", dont le contenu est découplé de toute solution technologique.

Le site de production est hébergé chez [Hostinger](https://www.hostinger.com), sur un VPS. Je le déploie avec [Ansible](https://docs.ansible.com), au sein de mon infra publique, dont voici le [repo IaC](https://github.com/le-quentin/public-infra) (Infra-as-Code).

Enfin, le site est protégé par le proxy DNS de [Cloudflare](https://www.cloudflare.com), dont le plan gratuit est tout simplement hallucinant : entre autres, on obtient un CDN avec caching et une protection anti DDoS, en plus de quelques petites fonctionnalités de monitoring de base.
