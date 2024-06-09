import '../database.dart';

class CartPackageItemTable extends SupabaseTable<CartPackageItemRow> {
  @override
  String get tableName => 'CartPackageItem';

  @override
  CartPackageItemRow createRow(Map<String, dynamic> data) =>
      CartPackageItemRow(data);
}

class CartPackageItemRow extends SupabaseDataRow {
  CartPackageItemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartPackageItemTable();

  int get pKCartpackageItem => getField<int>('PK_CartpackageItem')!;
  set pKCartpackageItem(int value) =>
      setField<int>('PK_CartpackageItem', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fKCartPackage => getField<int>('FK_CartPackage');
  set fKCartPackage(int? value) => setField<int>('FK_CartPackage', value);

  int? get fKItem => getField<int>('FK_Item');
  set fKItem(int? value) => setField<int>('FK_Item', value);
}
