import '../database.dart';

class IndexViewTable extends SupabaseTable<IndexViewRow> {
  @override
  String get tableName => 'index_view';

  @override
  IndexViewRow createRow(Map<String, dynamic> data) => IndexViewRow(data);
}

class IndexViewRow extends SupabaseDataRow {
  IndexViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IndexViewTable();

  int? get pKVendors => getField<int>('PK_Vendors');
  set pKVendors(int? value) => setField<int>('PK_Vendors', value);

  int? get pKEvents => getField<int>('PK_Events');
  set pKEvents(int? value) => setField<int>('PK_Events', value);

  int? get pKPlanners => getField<int>('PK_Planners');
  set pKPlanners(int? value) => setField<int>('PK_Planners', value);

  int? get pKCarts => getField<int>('PK_Carts');
  set pKCarts(int? value) => setField<int>('PK_Carts', value);

  int? get pKLiaisons => getField<int>('PK_Liaisons');
  set pKLiaisons(int? value) => setField<int>('PK_Liaisons', value);

  int? get pKVenues => getField<int>('PK_Venues');
  set pKVenues(int? value) => setField<int>('PK_Venues', value);

  int? get pKPackages => getField<int>('PK_Packages');
  set pKPackages(int? value) => setField<int>('PK_Packages', value);

  int? get pKFunctionSpaces => getField<int>('PK_FunctionSpaces');
  set pKFunctionSpaces(int? value) => setField<int>('PK_FunctionSpaces', value);

  int? get pKCartPackage => getField<int>('PK_CartPackage');
  set pKCartPackage(int? value) => setField<int>('PK_CartPackage', value);

  int? get pKEventPlanner => getField<int>('PK_EventPlanner');
  set pKEventPlanner(int? value) => setField<int>('PK_EventPlanner', value);

  int? get pKEventLiaison => getField<int>('PK_EventLiaison');
  set pKEventLiaison(int? value) => setField<int>('PK_EventLiaison', value);

  int? get pKCartFunctionSpace => getField<int>('PK_CartFunctionSpace');
  set pKCartFunctionSpace(int? value) =>
      setField<int>('PK_CartFunctionSpace', value);
}
