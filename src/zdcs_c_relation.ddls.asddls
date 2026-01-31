@EndUserText.label: 'Relationship - Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: ['Relationship','PositionNumber']
define root view entity ZDCS_C_RELATION
  provider contract transactional_query
  as projection on ZDCS_R_RELATION
{

      @Search.defaultSearchElement: true
      @ObjectModel.foreignKey.association: '_Navigation'
      @ObjectModel.text.element: ['ObjectName']
      @Consumption.semanticObject: 'ZDCS_REL_OTH'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZDCS_I_RELATION_NAV', element: 'PositionNumber' } }]
  key PositionNumber,
      @Consumption: {
        semanticObject: 'ZDCS_REL_OTH2',
        semanticObjectMapping.additionalBinding: [{
          localElement: 'RelatedObjectID',
          element: 'RelatedObjectID'
        }]
      }
  key Relationship, 
  key RelatedObjectID,
      @Consumption.semanticObject: 'ZDCS_REL_OTH'
      @Semantics.text: true
      ObjectName,
      ObjectRelate,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Navigation,
      _NavigationOther
}
