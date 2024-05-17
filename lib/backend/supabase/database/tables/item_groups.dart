import '../database.dart';

class ItemGroupsTable extends SupabaseTable<ItemGroupsRow> {
  @override
  String get tableName => 'ItemGroups';

  @override
  ItemGroupsRow createRow(Map<String, dynamic> data) => ItemGroupsRow(data);
}

class ItemGroupsRow extends SupabaseDataRow {
  ItemGroupsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemGroupsTable();

  int get pKItemGroups => getField<int>('PK_ItemGroups')!;
  set pKItemGroups(int value) => setField<int>('PK_ItemGroups', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get itemGroupName => getField<String>('item_group_name');
  set itemGroupName(String? value) =>
      setField<String>('item_group_name', value);

  int? get fKPackage => getField<int>('FK_Package');
  set fKPackage(int? value) => setField<int>('FK_Package', value);

  int? get fKItem => getField<int>('FK_Item');
  set fKItem(int? value) => setField<int>('FK_Item', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);
}
