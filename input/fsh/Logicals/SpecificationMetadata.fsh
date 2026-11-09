Logical: SpecificationMetadata
Parent: Base
Id: specification-metadata
Title: "Métadonnées d'une spécification d'interopérabilité"
Description: "Modèle logique des métadonnées associées à une spécification d'interopérabilité, utilisées pour mettre à jour la page web des spécifications d'interopérabilité générée automatiquement."

* titre 1..1 string "Titre" "Titre de la spécification"
* description 1..1 markdown "Texte de description" "Texte de description de la spécification"
* datePublication 1..1 date "Date de publication" "Date de publication de la spécification"
* identifiant 1..1 string "Identifiant" "Identifiant de la spécification"
* version 1..1 string "Numéro de version" "Numéro de version de la spécification"
* liens 1..1 BackboneElement "Liens" "Liens associés à la spécification"
  * historique 0..1 url "Lien historique" "Lien vers l'historique des versions"
  * ciBuild 0..1 url "Lien ci-build" "Lien vers la version ci-build (intégration continue)"
  * source 0..1 url "Lien source" "Lien vers le dépôt source"
  * specification 1..1 url "Lien vers la spécification" "Lien vers la spécification publiée"
* standard 1..1 string "Standard" "Standard utilisé par la spécification (CDA, FHIR, …)"
* tag 0..* string "Tag" "Tags permettant de classer la spécification"
* casUsage 0..* string "Cas d'usage" "Cas d'usage couverts par la spécification"
* editeur 1..1 string "Éditeur" "Éditeur de la spécification (InteropSanté, HL7 Europe, …)"
* display 0..1 string "Display du champ" "Libellé d'affichage du champ"
