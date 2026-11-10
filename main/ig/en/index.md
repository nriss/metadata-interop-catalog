# Accueil - Catalogue de métadonnées d'interopérabilité v0.1.0

## Accueil

 
There is no translation page available for the current page, so it has been rendered in the default language 

 **Brief description of this Implementation Guide**
 [Add a brief description of this IG in English] 

> Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/[code - ig]

### Introduction

Cet IG a pour but de préparer le remplacement de l'[espace de publication actuel](https://esante.gouv.fr/offres-services/ci-sis/espace-publication).

L'objectif de ce travail est d'avoir une page similaire à celle ci-dessous ([Produits et services de l'ANS](https://esante.gouv.fr/produits-services)), avec des « cards » qui représentent chaque spécification d'interopérabilité. Ces cards sont générées automatiquement à partir d'un fichier de métadonnées qui compile toutes les spécifications existantes. Un modèle logique et un exemple ont été définis dans cet IG pour proposer le modèle de données de ces métadonnées.

Exemple de format cible : des « cards » filtrables (source :
[esante.gouv.fr/produits-services](https://esante.gouv.fr/produits-services))


Reste à faire :

* Valider les métadonnées
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

Schéma d'alimentation : package-feed.xml, script de compilation, source de vérité conforme au modèle logique, site d'affichage


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

| | | | |
| :--- | :--- | :--- | :--- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances



### Propriété intellectuelle

No use of external IP (other than from the FHIR specification)

