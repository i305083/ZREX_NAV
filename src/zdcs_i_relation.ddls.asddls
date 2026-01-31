@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Relationship - Basic Interface'

define root view entity ZDCS_I_RELATION
  as select from zdcs_a_relation
  association [0..1] to ZDCS_I_RELATION_NAV as _Navigation      on  $projection.PositionNumber = _Navigation.PositionNumber
  association [0..1] to ZDCS_I_RELATION_OTH as _NavigationOther on  $projection.Relationship    = _NavigationOther.Relationship
                                                                and $projection.RelatedObjectID = _NavigationOther.RelatedObjectId
{
  key position_number       as PositionNumber,
  key relationship          as Relationship,
  key related_object_id     as RelatedObjectID,
      object_name           as ObjectName,
      object_relate         as ObjectRelate,

      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      _Navigation,
      _NavigationOther
}
