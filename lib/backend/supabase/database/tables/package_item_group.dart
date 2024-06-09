import '../database.dart';

class PackageItemGroupTable extends SupabaseTable<PackageItemGroupRow> {
  @override
  String get tableName => 'PackageItemGroup';

  @override
  PackageItemGroupRow createRow(Map<String, dynamic> data) =>
      PackageItemGroupRow(data);
}

class PackageItemGroupRow extends SupabaseDataRow {
  PackageItemGroupRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PackageItemGroupTable();

  int get pKPackageItemGroups => getField<int>('PK_PackageItemGroups')!;
  set pKPackageItemGroups(int value) =>
      setField<int>('PK_PackageItemGroups', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fKPackage => getField<int>('FK_Package');
  set fKPackage(int? value) => setField<int>('FK_Package', value);

  bool get hide => getField<bool>('hide')!;
  set hide(bool value) => setField<bool>('hide', value);

  int? get fKItem => getField<int>('FK_Item');
  set fKItem(int? value) => setField<int>('FK_Item', value);

  int? get fKItemGroup => getField<int>('FK_ItemGroup');
  set fKItemGroup(int? value) => setField<int>('FK_ItemGroup', value);

  String? get pigName => getField<String>('pig_name');
  set pigName(String? value) => setField<String>('pig_name', value);

  int? get pigMaxSelect => getField<int>('pig_max_select');
  set pigMaxSelect(int? value) => setField<int>('pig_max_select', value);

  int? get pigMinSelect => getField<int>('pig_min_select');
  set pigMinSelect(int? value) => setField<int>('pig_min_select', value);

  String? get pigDesc => getField<String>('pig_desc');
  set pigDesc(String? value) => setField<String>('pig_desc', value);
}
