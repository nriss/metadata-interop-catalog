# Métadonnées d'une spécification d'interopérabilité - Catalogue de métadonnées d'interopérabilité v0.1.0

## Logical Model: Métadonnées d'une spécification d'interopérabilité 

**Usages:**

* Use this Logical Model: [Liste des métadonnées de spécifications d'interopérabilité](StructureDefinition-specification-metadata-list.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.metadata-interop-catalog|current/StructureDefinition/StructureDefinition-specification-metadata.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-specification-metadata.csv), [Excel](../StructureDefinition-specification-metadata.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "specification-metadata",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/metadata-interop-catalog/StructureDefinition/specification-metadata",
  "version" : "0.1.0",
  "name" : "SpecificationMetadata",
  "title" : "Métadonnées d'une spécification d'interopérabilité",
  "status" : "draft",
  "date" : "2026-11-09T14:31:32+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique des métadonnées associées à une spécification d'interopérabilité, utilisées pour mettre à jour la page web des spécifications d'interopérabilité générée automatiquement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/metadata-interop-catalog/StructureDefinition/specification-metadata",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "specification-metadata",
      "path" : "specification-metadata",
      "short" : "Métadonnées d'une spécification d'interopérabilité",
      "definition" : "Modèle logique des métadonnées associées à une spécification d'interopérabilité, utilisées pour mettre à jour la page web des spécifications d'interopérabilité générée automatiquement."
    },
    {
      "id" : "specification-metadata.titre",
      "path" : "specification-metadata.titre",
      "short" : "Titre",
      "definition" : "Titre de la spécification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "specification-metadata.description",
      "path" : "specification-metadata.description",
      "short" : "Texte de description",
      "definition" : "Texte de description de la spécification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "markdown"
      }]
    },
    {
      "id" : "specification-metadata.datePublication",
      "path" : "specification-metadata.datePublication",
      "short" : "Date de publication",
      "definition" : "Date de publication de la dernière version de la spécification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "specification-metadata.identifiant",
      "path" : "specification-metadata.identifiant",
      "short" : "Identifiant",
      "definition" : "Identifiant de la spécification (ex. ans.fhir.fr.mesures, CR-BIO)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "specification-metadata.version",
      "path" : "specification-metadata.version",
      "short" : "Numéro de version",
      "definition" : "Numéro de la dernière version de la spécification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "specification-metadata.liens",
      "path" : "specification-metadata.liens",
      "short" : "Liens",
      "definition" : "Liens associés à la spécification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "specification-metadata.liens.historique",
      "path" : "specification-metadata.liens.historique",
      "short" : "Lien historique",
      "definition" : "Lien vers l'historique des versions",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "specification-metadata.liens.ciBuild",
      "path" : "specification-metadata.liens.ciBuild",
      "short" : "Lien ci-build",
      "definition" : "Lien vers la version ci-build (intégration continue)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "specification-metadata.liens.source",
      "path" : "specification-metadata.liens.source",
      "short" : "Lien source",
      "definition" : "Lien vers le dépôt source",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "specification-metadata.liens.specification",
      "path" : "specification-metadata.liens.specification",
      "short" : "Lien vers la spécification",
      "definition" : "Lien vers la spécification publiée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "specification-metadata.standard",
      "path" : "specification-metadata.standard",
      "short" : "Standard",
      "definition" : "Standard utilisé par la spécification (CDA, FHIR)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "specification-metadata.tag",
      "path" : "specification-metadata.tag",
      "short" : "Tag",
      "definition" : "Tags permettant de classer la spécification",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "specification-metadata.casUsage",
      "path" : "specification-metadata.casUsage",
      "short" : "Cas d'usage",
      "definition" : "Cas d'usage couverts par la spécification",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "specification-metadata.porteur",
      "path" : "specification-metadata.porteur",
      "short" : "Porteur",
      "definition" : "Porteur de la spécification (ANS, InteropSanté, HL7 Europe, …)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "specification-metadata.display",
      "path" : "specification-metadata.display",
      "short" : "Display du champ",
      "definition" : "Libellé d'affichage du champ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
