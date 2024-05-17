import '../database.dart';

class ImageAssetsTable extends SupabaseTable<ImageAssetsRow> {
  @override
  String get tableName => 'ImageAssets';

  @override
  ImageAssetsRow createRow(Map<String, dynamic> data) => ImageAssetsRow(data);
}

class ImageAssetsRow extends SupabaseDataRow {
  ImageAssetsRow(super.data);

  @override
  SupabaseTable get table => ImageAssetsTable();

  int get pKImageAssets => getField<int>('PK_ImageAssets')!;
  set pKImageAssets(int value) => setField<int>('PK_ImageAssets', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  int? get imageType => getField<int>('image_type');
  set imageType(int? value) => setField<int>('image_type', value);
}
