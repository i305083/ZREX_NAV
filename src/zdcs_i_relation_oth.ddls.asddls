@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'test'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZDCS_I_RELATION_OTH
  as select from zdcs_a_rel_oth
{ 
      @ObjectModel.text.element: ['ObjectDesc']
      @UI.textArrangement: #TEXT_LAST
  key relationship      as Relationship,
  key related_object_id as RelatedObjectId,
      @Semantics.text: true
      object_desc       as ObjectDesc
}
