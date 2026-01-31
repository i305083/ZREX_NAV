@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'test'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZDCS_R_RELATION
  as select from ZDCS_I_RELATION
{
  key PositionNumber,
  key Relationship,
  key RelatedObjectID,
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
