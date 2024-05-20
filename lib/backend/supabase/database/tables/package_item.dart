import '../database.dart';

class PackageItemTable extends SupabaseTable<PackageItemRow> {
  @override
  String get tableName => 'PackageItem';

  @override
  PackageItemRow createRow(Map<String, dynamic> data) => PackageItemRow(data);
}

class PackageItemRow extends SupabaseDataRow {
  PackageItemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PackageItemTable();

  int get pKPackageItem => getField<int>('PK_PackageItem')!;
  set pKPackageItem(int value) => setField<int>('PK_PackageItem', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fKPackage => getField<int>('FK_Package');
  set fKPackage(int? value) => setField<int>('FK_Package', value);

  int? get fKItem => getField<int>('FK_Item');
  set fKItem(int? value) => setField<int>('FK_Item', value);
}
