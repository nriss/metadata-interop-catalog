[![Workflow Init](https://github.com/nriss/metadata-interop-catalog/actions/workflows/fhir-workflows.yml/badge.svg)](https://github.com/nriss/metadata-interop-catalog/actions/workflows/fhir-workflows.yml)

# metadata-interop-catalog

Implementation Guide (IG) qui spécifie les métadonnées associées à une spécification d'interopérabilité, afin de mettre à jour une page web des spécifications d'interopérabilité générée automatiquement.

# Contexte

## Contexte métier du projet

L'ANS publie de nombreuses spécifications d'interopérabilité (FHIR, CDA, HL7v2…). Une page web qui les recense est générée automatiquement. Cet IG définit les métadonnées nécessaires à cette page : titre, description, date et numéro de la dernière version, identifiant, liens (historique, ci-build, source, spécification), standard, tags, cas d'usage, porteur et libellé d'affichage.

## Contexte technique du projet

Le contenu de l'IG est constitué de deux modèles logiques :

* `SpecificationMetadata` : métadonnées d'une spécification d'interopérabilité ;
* `SpecificationMetadataList` : liste de `SpecificationMetadata`.

Un exemple de liste, construit à partir de [https://interop.esante.gouv.fr/ig/fhir/package-feed.xml](https://interop.esante.gouv.fr/ig/fhir/package-feed.xml), est fourni dans `input/examples/SpecificationMetadataList-fhir.json` et déclaré dans `sushi-config.yaml`.

Les sources d'informations actuelles sont les flux `package-feed.xml` de `interop.esante.gouv.fr` (racine, `/ig`, `/ig/fhir`, `/ig/cda` et `/ig/HL7v2`). Le CDA n'a pas encore de flux pour ses spécifications existantes, uniquement publiées en PDF sur l'[Espace de publication du CI-SIS](https://esante.gouv.fr/offres-services/ci-sis/espace-publication). Le détail est dans la page d'accueil de l'IG (`input/pagecontent/index.md`).

# CI/CD

Les workflows associés à ce repository (`.github/workflows`) permettent :

* D'exécuter SUSHI pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://nriss.github.io/metadata-interop-catalog/main/ig

# Notes

Ce repo a été initialisé à partir du modèle [ansforge/IG-modele](https://github.com/ansforge/IG-modele).

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* ANS : Agence du Numérique en Santé
* CDA : Clinical Document Architecture
* CI-SIS : Cadre d'Interopérabilité des Systèmes d'Information de Santé
* FHIR : Fast Healthcare Interoperability Resources
* HL7 : Health Level Seven
* IG : Implementation Guide
