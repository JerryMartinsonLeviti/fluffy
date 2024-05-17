import '../database.dart';

class LiaisonsViewTable extends SupabaseTable<LiaisonsViewRow> {
  @override
  String get tableName => 'liaisons_view';

  @override
  LiaisonsViewRow createRow(Map<String, dynamic> data) => LiaisonsViewRow(data);
}

class LiaisonsViewRow extends SupabaseDataRow {
  LiaisonsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LiaisonsViewTable();

  int? get pKLiaisons => getField<int>('PK_Liaisons');
  set pKLiaisons(int? value) => setField<int>('PK_Liaisons', value);

  String? get liaisonName => getField<String>('liaison_name');
  set liaisonName(String? value) => setField<String>('liaison_name', value);

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
