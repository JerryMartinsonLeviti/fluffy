import '../database.dart';

class TermAssetsTable extends SupabaseTable<TermAssetsRow> {
  @override
  String get tableName => 'TermAssets';

  @override
  TermAssetsRow createRow(Map<String, dynamic> data) => TermAssetsRow(data);
}

class TermAssetsRow extends SupabaseDataRow {
  TermAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TermAssetsTable();

  int get pKTermAssets => getField<int>('PK_TermAssets')!;
  set pKTermAssets(int value) => setField<int>('PK_TermAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get term => getField<String>('term')!;
  set term(String value) => setField<String>('term', value);

  String get header => getField<String>('header')!;
  set header(String value) => setField<String>('header', value);

  bool get silverSpikeTerm => getField<bool>('SilverSpikeTerm')!;
  set silverSpikeTerm(bool value) => setField<bool>('SilverSpikeTerm', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  int? get fKVenue => getField<int>('FK_Venue');
  set fKVenue(int? value) => setField<int>('FK_Venue', value);

  bool get hide => getField<bool>('hide')!;
  set hide(bool value) => setField<bool>('hide', value);
}
