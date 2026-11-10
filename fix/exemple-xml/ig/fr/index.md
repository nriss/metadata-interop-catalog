# Accueil - Catalogue de métadonnées d'interopérabilité v0.1.0

## Accueil

 **Brief description of this Implementation Guide**
 [Add a brief description of this IG in English] 

> Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/[code - ig]

### Introduction

Définir ici de quoi parle l'IG (En termes non expert, compréhensible par un patient). Rajouter également les détails techniques sur le contexte et le besoin de cet IG

Les principales sections de l'IG sont :

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

#### Problématique : le cas du CDA

Les nouvelles spécifications CDA seront publiées sous forme d'Implementation Guides, et donc référencées dans le flux `https://interop.esante.gouv.fr/ig/cda/package-feed.xml`. En revanche, les spécifications CDA existantes n'ont actuellement pas de correspondance en `package-feed.xml`. Toutes leurs informations, y compris l'historique des versions, sont renseignées sur la page [Espace de publication du CI-SIS](https://esante.gouv.fr/offres-services/ci-sis/espace-publication), sous forme de documents PDF.

Deux options sont envisageables pour assurer la cohérence des sources :

* adapter l'outil afin qu'il sache lire les informations de cette page ;
* englober les PDF dans des Implementation Guides afin de produire un `package-feed.xml` cohérent avec les autres standards.

### Auteurs et contributeurs (optionnel)

| | | | |
| :--- | :--- | :--- | :--- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances



### Propriété intellectuelle

No use of external IP (other than from the FHIR specification)

