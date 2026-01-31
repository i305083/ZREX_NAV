@EndUserText.label: 'Position Navigation - Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define view entity ZDCS_I_RELATION_NAV
  as select from zdcs_a_rel_nav
{     
      @ObjectModel.text.element: ['PositionName']
      @UI.textArrangement: #TEXT_LAST
  key position_number as PositionNumber,
      @Semantics.text: true
      position_name   as PositionName,
      position_type   as PositionType,
      position_desc   as PositionDesc
}
