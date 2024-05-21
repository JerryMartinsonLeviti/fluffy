import '../database.dart';

class ImageAssetsTable extends SupabaseTable<ImageAssetsRow> {
  @override
  String get tableName => 'ImageAssets';

  @override
  ImageAssetsRow createRow(Map<String, dynamic> data) => ImageAssetsRow(data);
}

class ImageAssetsRow extends SupabaseDataRow {
  ImageAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImageAssetsTable();

  int get pKImageAssets => getField<int>('PK_ImageAssets')!;
  set pKImageAssets(int value) => setField<int>('PK_ImageAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get imageName => getField<String>('image_name')!;
  set imageName(String value) => setField<String>('image_name', value);

  String get imageUrl => getField<String>('image_url')!;
  set imageUrl(String value) => setField<String>('image_url', value);

  String? get imageType => getField<String>('image_type');
  set imageType(String? value) => setField<String>('image_type', value);

  bool get hide => getField<bool>('hide')!;
  set hide(bool value) => setField<bool>('hide', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  int? get fKVenue => getField<int>('FK_Venue');
  set fKVenue(int? value) => setField<int>('FK_Venue', value);

  String get originalURL => getField<String>('originalURL')!;
  set originalURL(String value) => setField<String>('originalURL', value);

  int get order => getField<int>('order')!;
  set order(int value) => setField<int>('order', value);

  int? get fKFunctionSpace => getField<int>('FK_FunctionSpace');
  set fKFunctionSpace(int? value) => setField<int>('FK_FunctionSpace', value);
}
