import '../database.dart';

class FinalCombinedViewTable extends SupabaseTable<FinalCombinedViewRow> {
  @override
  String get tableName => 'final_combined_view';

  @override
  FinalCombinedViewRow createRow(Map<String, dynamic> data) =>
      FinalCombinedViewRow(data);
}

class FinalCombinedViewRow extends SupabaseDataRow {
  FinalCombinedViewRow(super.data);

  @override
  SupabaseTable get table => FinalCombinedViewTable();

  int? get pKVendors => getField<int>('PK_Vendors');
  set pKVendors(int? value) => setField<int>('PK_Vendors', value);

  int? get pKPlanners => getField<int>('PK_Planners');
  set pKPlanners(int? value) => setField<int>('PK_Planners', value);

  int? get pKLiaisons => getField<int>('PK_Liaisons');
  set pKLiaisons(int? value) => setField<int>('PK_Liaisons', value);

  int? get room => getField<int>('room');
  set room(int? value) => setField<int>('room', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  String? get photourl => getField<String>('photourl');
  set photourl(String? value) => setField<String>('photourl', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get orgName => getField<String>('org_name');
  set orgName(String? value) => setField<String>('org_name', value);
}
