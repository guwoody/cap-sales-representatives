using SalesRepService as service from '../../srv/service';


// Tell Fiori about the structure of the hierarchy
annotate service.SalesRepresentatives with @Aggregation.RecursiveHierarchy #SalesRepsHierarchy : {
  ParentNavigationProperty : superior, // navigates to a node's parent
  NodeProperty             : ID, // identifies a node, usually the key
};

// Fiori expects the following to be defined explicitly, even though they're always the same
extend service.SalesRepresentatives with @(
  // The columns expected by Fiori to be present in hierarchy entities
  Hierarchy.RecursiveHierarchy #SalesRepsHierarchy : {
    LimitedDescendantCount : LimitedDescendantCount,
    DistanceFromRoot       : DistanceFromRoot,
    DrillState             : DrillState,
    LimitedRank            : LimitedRank
  },
  // Disallow filtering on these properties from Fiori UIs
  Capabilities.FilterRestrictions.NonFilterableProperties: [
    'LimitedDescendantCount',
    'DistanceFromRoot',
    'DrillState',
    'LimitedRank'
  ],
  // Disallow sorting on these properties from Fiori UIs
  Capabilities.SortRestrictions.NonSortableProperties    : [
    'LimitedDescendantCount',
    'DistanceFromRoot',
    'DrillState',
    'LimitedRank'
  ],
) columns { // Ensure we can query these fields from database
  null as LimitedDescendantCount : Int16,
  null as DistanceFromRoot       : Int16,
  null as DrillState             : String,
  null as LimitedRank            : Int16,
};