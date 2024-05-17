import '../database.dart';

class AssetCollectionsTable extends SupabaseTable<AssetCollectionsRow> {
  @override
  String get tableName => 'AssetCollections';

  @override
  AssetCollectionsRow createRow(Map<String, dynamic> data) =>
      AssetCollectionsRow(data);
}

class AssetCollectionsRow extends SupabaseDataRow {
  AssetCollectionsRow(super.data);

  @override
  SupabaseTable get table => AssetCollectionsTable();

  int get pKAssetCollections => getField<int>('PK_AssetCollections')!;
  set pKAssetCollections(int value) =>
      setField<int>('PK_AssetCollections', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fKItem => getField<int>('FK_Item');
  set fKItem(int? value) => setField<int>('FK_Item', value);

  int? get fKPackage => getField<int>('FK_Package');
  set fKPackage(int? value) => setField<int>('FK_Package', value);

  int? get fKModifier => getField<int>('FK_Modifier');
  set fKModifier(int? value) => setField<int>('FK_Modifier', value);

  int? get fKVenue => getField<int>('FK_Venue');
  set fKVenue(int? value) => setField<int>('FK_Venue', value);

  int? get fKFunctionSpace => getField<int>('FK_FunctionSpace');
  set fKFunctionSpace(int? value) => setField<int>('FK_FunctionSpace', value);

  int? get fKImageAsset => getField<int>('FK_ImageAsset');
  set fKImageAsset(int? value) => setField<int>('FK_ImageAsset', value);

  int? get fKFaqAsset => getField<int>('FK_FaqAsset');
  set fKFaqAsset(int? value) => setField<int>('FK_FaqAsset', value);

  int? get fKLogoAsset => getField<int>('FK_LogoAsset');
  set fKLogoAsset(int? value) => setField<int>('FK_LogoAsset', value);

  int? get fKDescriptionAsset => getField<int>('FK_DescriptionAsset');
  set fKDescriptionAsset(int? value) =>
      setField<int>('FK_DescriptionAsset', value);

  int? get fKTermAsset => getField<int>('FK_TermAsset');
  set fKTermAsset(int? value) => setField<int>('FK_TermAsset', value);

  int? get fKPlanner => getField<int>('FK_Planner');
  set fKPlanner(int? value) => setField<int>('FK_Planner', value);

  int? get fKEvent => getField<int>('FK_Event');
  set fKEvent(int? value) => setField<int>('FK_Event', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  int? get fKCart => getField<int>('FK_Cart');
  set fKCart(int? value) => setField<int>('FK_Cart', value);

  int? get fKUrlAsset => getField<int>('FK_UrlAsset');
  set fKUrlAsset(int? value) => setField<int>('FK_UrlAsset', value);
}
