import '../database.dart';

class VendorsViewTable extends SupabaseTable<VendorsViewRow> {
  @override
  String get tableName => 'vendors_view';

  @override
  VendorsViewRow createRow(Map<String, dynamic> data) => VendorsViewRow(data);
}

class VendorsViewRow extends SupabaseDataRow {
  VendorsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorsViewTable();

  int? get pKVendors => getField<int>('PK_Vendors');
  set pKVendors(int? value) => setField<int>('PK_Vendors', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

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
