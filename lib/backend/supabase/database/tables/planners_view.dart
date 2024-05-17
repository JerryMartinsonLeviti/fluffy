import '../database.dart';

class PlannersViewTable extends SupabaseTable<PlannersViewRow> {
  @override
  String get tableName => 'planners_view';

  @override
  PlannersViewRow createRow(Map<String, dynamic> data) => PlannersViewRow(data);
}

class PlannersViewRow extends SupabaseDataRow {
  PlannersViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlannersViewTable();

  int? get pKPlanners => getField<int>('PK_Planners');
  set pKPlanners(int? value) => setField<int>('PK_Planners', value);

  String? get plannerName => getField<String>('planner_name');
  set plannerName(String? value) => setField<String>('planner_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get firstName => getField<String>('firstName');
  set firstName(String? value) => setField<String>('firstName', value);

  String? get lastName => getField<String>('lastName');
  set lastName(String? value) => setField<String>('lastName', value);

  String? get photoUrl => getField<String>('photoUrl');
  set photoUrl(String? value) => setField<String>('photoUrl', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get pKOrganizations => getField<int>('PK_Organizations');
  set pKOrganizations(int? value) => setField<int>('PK_Organizations', value);

  String? get orgName => getField<String>('org_name');
  set orgName(String? value) => setField<String>('org_name', value);
}
