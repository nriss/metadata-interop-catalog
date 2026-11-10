# Liste des métadonnées de spécifications d'interopérabilité - Catalogue de métadonnées d'interopérabilité v0.1.0

## Modèle logique: Liste des métadonnées de spécifications d'interopérabilité 

**Utilisations:**

* Ce/t/te Modèle logique n'est utilisé/e par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.metadata-interop-catalog|current/StructureDefinition/specification-metadata-list)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 

Autres représentations du profil : [CSV](../StructureDefinition-specification-metadata-list.csv), [Excel](../StructureDefinition-specification-metadata-list.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "specification-metadata-list",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/metadata-interop-catalog/StructureDefinition/specification-metadata-list",
  "version" : "0.1.0",
  "name" : "SpecificationMetadataList",
  "title" : "Liste des métadonnées de spécifications d'interopérabilité",
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
  "description" : "Modèle logique de la liste des métadonnées de spécifications d'interopérabilité, utilisée pour mettre à jour la page web des spécifications d'interopérabilité générée automatiquement.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/metadata-interop-catalog/StructureDefinition/specification-metadata-list",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "specification-metadata-list",
      "path" : "specification-metadata-list",
      "short" : "Liste des métadonnées de spécifications d'interopérabilité",
      "definition" : "Modèle logique de la liste des métadonnées de spécifications d'interopérabilité, utilisée pour mettre à jour la page web des spécifications d'interopérabilité générée automatiquement."
    },
    {
      "id" : "specification-metadata-list.specifications",
      "path" : "specification-metadata-list.specifications",
      "short" : "Spécifications",
      "definition" : "Liste des métadonnées des spécifications d'interopérabilité",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/metadata-interop-catalog/StructureDefinition/specification-metadata"
      }]
    }]
  }
}

```
