import '../database.dart';

class FaqAssetsTable extends SupabaseTable<FaqAssetsRow> {
  @override
  String get tableName => 'FaqAssets';

  @override
  FaqAssetsRow createRow(Map<String, dynamic> data) => FaqAssetsRow(data);
}

class FaqAssetsRow extends SupabaseDataRow {
  FaqAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FaqAssetsTable();

  int get pKFaqAssets => getField<int>('PK_FaqAssets')!;
  set pKFaqAssets(int value) => setField<int>('PK_FaqAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get answer => getField<String>('answer')!;
  set answer(String value) => setField<String>('answer', value);

  String get question => getField<String>('question')!;
  set question(String value) => setField<String>('question', value);

  bool get siteFaq => getField<bool>('SiteFaq')!;
  set siteFaq(bool value) => setField<bool>('SiteFaq', value);

  bool get siteFaqFrontPageVisable =>
      getField<bool>('SiteFaqFrontPageVisable')!;
  set siteFaqFrontPageVisable(bool value) =>
      setField<bool>('SiteFaqFrontPageVisable', value);

  bool get siteFaqVendor => getField<bool>('SiteFaqVendor')!;
  set siteFaqVendor(bool value) => setField<bool>('SiteFaqVendor', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  int? get fKVenue => getField<int>('FK_Venue');
  set fKVenue(int? value) => setField<int>('FK_Venue', value);

  bool get hide => getField<bool>('hide')!;
  set hide(bool value) => setField<bool>('hide', value);
}
