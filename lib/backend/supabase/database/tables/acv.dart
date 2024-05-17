import '../database.dart';

class AcvTable extends SupabaseTable<AcvRow> {
  @override
  String get tableName => 'acv';

  @override
  AcvRow createRow(Map<String, dynamic> data) => AcvRow(data);
}

class AcvRow extends SupabaseDataRow {
  AcvRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AcvTable();

  int? get pKAssetCollections => getField<int>('PK_AssetCollections');
  set pKAssetCollections(int? value) =>
      setField<int>('PK_AssetCollections', value);

  int? get pKLogoAssets => getField<int>('PK_LogoAssets');
  set pKLogoAssets(int? value) => setField<int>('PK_LogoAssets', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  int? get pKDescriptionAssets => getField<int>('PK_DescriptionAssets');
  set pKDescriptionAssets(int? value) =>
      setField<int>('PK_DescriptionAssets', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get descriptionName => getField<String>('description_name');
  set descriptionName(String? value) =>
      setField<String>('description_name', value);

  int? get pKTermAssets => getField<int>('PK_TermAssets');
  set pKTermAssets(int? value) => setField<int>('PK_TermAssets', value);

  int? get pKFaqAssets => getField<int>('PK_FaqAssets');
  set pKFaqAssets(int? value) => setField<int>('PK_FaqAssets', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  String? get answer => getField<String>('answer');
  set answer(String? value) => setField<String>('answer', value);

  int? get pKUrlAssets => getField<int>('PK_UrlAssets');
  set pKUrlAssets(int? value) => setField<int>('PK_UrlAssets', value);

  String? get urlUrl => getField<String>('url_url');
  set urlUrl(String? value) => setField<String>('url_url', value);

  int? get pKImageAssets => getField<int>('PK_ImageAssets');
  set pKImageAssets(int? value) => setField<int>('PK_ImageAssets', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get imageName => getField<String>('image_name');
  set imageName(String? value) => setField<String>('image_name', value);

  int? get pKItems => getField<int>('PK_Items');
  set pKItems(int? value) => setField<int>('PK_Items', value);

  int? get pKPackages => getField<int>('PK_Packages');
  set pKPackages(int? value) => setField<int>('PK_Packages', value);

  int? get pKModifiers => getField<int>('PK_Modifiers');
  set pKModifiers(int? value) => setField<int>('PK_Modifiers', value);

  int? get pKVenues => getField<int>('PK_Venues');
  set pKVenues(int? value) => setField<int>('PK_Venues', value);

  int? get pKFunctionSpaces => getField<int>('PK_FunctionSpaces');
  set pKFunctionSpaces(int? value) => setField<int>('PK_FunctionSpaces', value);

  int? get pKPlanners => getField<int>('PK_Planners');
  set pKPlanners(int? value) => setField<int>('PK_Planners', value);

  int? get pKEvents => getField<int>('PK_Events');
  set pKEvents(int? value) => setField<int>('PK_Events', value);

  int? get pKCarts => getField<int>('PK_Carts');
  set pKCarts(int? value) => setField<int>('PK_Carts', value);
}
