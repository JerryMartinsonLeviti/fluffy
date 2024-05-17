import '../database.dart';

class OrganizationsTable extends SupabaseTable<OrganizationsRow> {
  @override
  String get tableName => 'Organizations';

  @override
  OrganizationsRow createRow(Map<String, dynamic> data) =>
      OrganizationsRow(data);
}

class OrganizationsRow extends SupabaseDataRow {
  OrganizationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrganizationsTable();

  int get pKOrganizations => getField<int>('PK_Organizations')!;
  set pKOrganizations(int value) => setField<int>('PK_Organizations', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fKOrganizationsParent => getField<int>('FK_Organizations_parent');
  set fKOrganizationsParent(int? value) =>
      setField<int>('FK_Organizations_parent', value);

  String? get w9CompanyName => getField<String>('w9CompanyName');
  set w9CompanyName(String? value) => setField<String>('w9CompanyName', value);

  String? get websiteUrl => getField<String>('websiteUrl');
  set websiteUrl(String? value) => setField<String>('websiteUrl', value);

  String? get orgName => getField<String>('org_name');
  set orgName(String? value) => setField<String>('org_name', value);
}
