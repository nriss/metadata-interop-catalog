Logical: SpecificationMetadataList
Parent: Base
Id: specification-metadata-list
Title: "Liste des métadonnées de spécifications d'interopérabilité"
Description: "Modèle logique de la liste des métadonnées de spécifications d'interopérabilité, utilisée pour mettre à jour la page web des spécifications d'interopérabilité générée automatiquement."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-namespace"
* ^extension[0].valueUri = "https://interop.esante.gouv.fr/ig/fhir/metadata-interop-catalog"

* specifications 0..* SpecificationMetadata "Spécifications" "Liste des métadonnées des spécifications d'interopérabilité"
