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

Cet IG a pour but de remplacer l'[espace de publication actuel du CI-SIS](https://esante.gouv.fr/offres-services/ci-sis/espace-publication).

Les « cards » qui présentent chaque spécification d'interopérabilité sont générées automatiquement à partir d'un fichier de métadonnées qui compile toutes les spécifications existantes. Ce fichier respecte le modèle logique défini dans cet IG (`SpecificationMetadataList`).

Reste à faire :

* Se mettre d'accord sur les métadonnées
* Régler les spécifications qui ne sont pas encore au format IG :
    * Excel
    * IHE XDM
    * Infobutton
    * IHE WIA
    * INS
    * Couche transport
    * Annexes
    * …

### Sources d'informations actuelles

Les métadonnées des spécifications d'interopérabilité sont actuellement issues des flux `package-feed.xml` suivants :

* [https://interop.esante.gouv.fr/package-feed.xml](https://interop.esante.gouv.fr/package-feed.xml)
* [https://interop.esante.gouv.fr/ig/package-feed.xml](https://interop.esante.gouv.fr/ig/package-feed.xml)
* [https://interop.esante.gouv.fr/ig/fhir/package-feed.xml](https://interop.esante.gouv.fr/ig/fhir/package-feed.xml)
* [https://interop.esante.gouv.fr/ig/cda/package-feed.xml](https://interop.esante.gouv.fr/ig/cda/package-feed.xml)
* [https://interop.esante.gouv.fr/ig/HL7v2/package-feed.xml](https://interop.esante.gouv.fr/ig/HL7v2/package-feed.xml)

#### Schéma d'alimentation

Les différents `package-feed.xml` alimentent automatiquement une source de vérité conforme au modèle logique `SpecificationMetadataList`, qui alimente à son tour automatiquement le site d'affichage des spécifications.

<figure style="text-align: center; margin: 0 auto;">
{% include flux-alimentation.svg %}
<figcaption style="text-align: center;">Schéma d'alimentation : package-feed.xml, outil d'agrégation, source de vérité conforme au modèle logique, site d'affichage</figcaption>
</figure>
<br clear="all"/>

#### Problématiques : les spécifications qui ne sont pas encore au format IG

Certaines spécifications ne sont pas encore publiées sous forme d'Implementation Guide (voir la liste dans « Reste à faire »). Elles n'ont donc pas de correspondance en `package-feed.xml`.

**Exemple : les spécifications CDA.** Les spécifications CDA existantes sont publiées uniquement sous forme de documents PDF. Toutes leurs informations, y compris l'historique des versions, sont renseignées sur la page [Espace de publication du CI-SIS](https://esante.gouv.fr/offres-services/ci-sis/espace-publication). Les nouvelles spécifications CDA seront, elles, publiées sous forme d'IG et référencées dans le flux `https://interop.esante.gouv.fr/ig/cda/package-feed.xml`.

Cet exemple illustre une double problématique :

* **Plusieurs versions par spécification :** une même spécification CDA a plusieurs versions distinctes, une pour le fonctionnel, une pour le technique et une pour l'étude des normes et standards. Le modèle de métadonnées (une version par spécification) doit donc être adapté ou décliné pour les représenter.
* **Un historique éclaté :** l'historique est publié sur des pages dédiées à chaque volet, par exemple [Volet Cancer PPS (Programme Personnalisé de Soins en cancérologie)](https://esante.gouv.fr/volet-cancer-pps-programme-personnalise-de-soins-en-cancerologie), et non sur une page unique.

Deux options sont envisageables pour assurer la cohérence des sources :

* adapter l'outil afin qu'il sache lire les informations de cette page ;
* englober les PDF dans des Implementation Guides afin de produire un `package-feed.xml` cohérent avec les autres standards.

##### Solution proposée

Créer un IG qui encapsule les PDF des spécifications qui ne sont pas encore au format IG. Chaque IG est publié avec son `package-feed.xml`, ce qui rend ces spécifications référençables de la même manière que les autres standards, sans adapter l'outil.

Lorsque ces spécifications passeront au « full IG » (par exemple les spécifications CDA), le problème sera automatiquement réglé : les IGs complets remplaceront les IGs d'encapsulation des PDF et seront déjà référencés dans les `package-feed.xml` existants (par exemple `https://interop.esante.gouv.fr/ig/cda/package-feed.xml` pour le CDA).

### Auteurs et contributeurs (optionnel)

| Role  | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}
