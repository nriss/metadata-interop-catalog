<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
[Add a brief description of this IG in English]
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/[code - ig]</p>
    </blockquote>
</div>
{% endif %}


{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/[code - ig]
</p>
</blockquote>
</div>
{% endif %}


<!--  A décommenter si CI-SIS
<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>
-->

### Introduction

Définir ici de quoi parle l'IG (En termes non expert, compréhensible par un patient). Rajouter également les détails techniques sur le contexte et le besoin de cet IG

Les principales sections de l'IG  sont :

* Le contexte de l'IG, quelle problématique il résout
* Ce que les Implémenteurs doivent mettre en place
* Un onglet "Ressources de conformité" pour s'assurer d'un schéma global entre tous les IGs

### Périmètre du projet

Définir en quelques lignes quel est le périmètre du projet

Toujours laisser l'onglet "Ressources de conformité" pour s'assurer d'une cohérence globales entre tous les IGs

### Sources d'informations actuelles

Les métadonnées des spécifications d'interopérabilité sont actuellement issues des flux `package-feed.xml` suivants :

* [https://interop.esante.gouv.fr/package-feed.xml](https://interop.esante.gouv.fr/package-feed.xml)
* [https://interop.esante.gouv.fr/ig/package-feed.xml](https://interop.esante.gouv.fr/ig/package-feed.xml)
* [https://interop.esante.gouv.fr/ig/fhir/package-feed.xml](https://interop.esante.gouv.fr/ig/fhir/package-feed.xml)
* [https://interop.esante.gouv.fr/ig/cda/package-feed.xml](https://interop.esante.gouv.fr/ig/cda/package-feed.xml)
* [https://interop.esante.gouv.fr/ig/HL7v2/package-feed.xml](https://interop.esante.gouv.fr/ig/HL7v2/package-feed.xml)

#### Problématiques : le cas du CDA

Les nouvelles spécifications CDA seront publiées sous forme d'Implementation Guides, et donc référencées dans le flux `https://interop.esante.gouv.fr/ig/cda/package-feed.xml`. En revanche, les spécifications CDA existantes n'ont actuellement pas de correspondance en `package-feed.xml`. Toutes leurs informations, y compris l'historique des versions, sont renseignées sur la page [Espace de publication du CI-SIS](https://esante.gouv.fr/offres-services/ci-sis/espace-publication), sous forme de documents PDF.

Le CDA présente en réalité une double problématique :

* **Plusieurs versions par spécification :** une même spécification CDA a plusieurs versions distinctes, une pour le fonctionnel, une pour le technique et une pour l'étude des normes et standards. Le modèle de métadonnées (une version par spécification) doit donc être adapté ou décliné pour les représenter.
* **Un historique éclaté :** l'historique est publié sur des pages dédiées à chaque volet, par exemple [Volet Cancer PPS (Programme Personnalisé de Soins en cancérologie)](https://esante.gouv.fr/volet-cancer-pps-programme-personnalise-de-soins-en-cancerologie), et non sur une page unique.

Deux options sont envisageables pour assurer la cohérence des sources :

* adapter l'outil afin qu'il sache lire les informations de cette page ;
* englober les PDF dans des Implementation Guides afin de produire un `package-feed.xml` cohérent avec les autres standards.

### Auteurs et contributeurs (optionnel)

| Role  | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}
