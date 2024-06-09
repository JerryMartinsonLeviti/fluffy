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

  int? get minSelections => getField<int>('minSelections');
  set minSelections(int? value) => setField<int>('minSelections', value);

  int? get maxSelections => getField<int>('maxSelections');
  set maxSelections(int? value) => setField<int>('maxSelections', value);

  String? get itemGroupDescription =>
      getField<String>('item_group_description');
  set itemGroupDescription(String? value) =>
      setField<String>('item_group_description', value);

  bool get hide => getField<bool>('hide')!;
  set hide(bool value) => setField<bool>('hide', value);

  int? get fKPackage => getField<int>('FK_Package');
  set fKPackage(int? value) => setField<int>('FK_Package', value);
}
