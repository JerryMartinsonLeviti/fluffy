import '/backend/supabase/supabase.dart';
import '/components/beverage_package_card/beverage_package_card_widget.dart';
import '/components/food_package_card/food_package_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'packages_component_widget.dart' show PackagesComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PackagesComponentModel extends FlutterFlowModel<PackagesComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BeveragePackageCard component.
  late BeveragePackageCardModel beveragePackageCardModel1;
  // Model for BeveragePackageCard component.
  late BeveragePackageCardModel beveragePackageCardModel2;

  @override
  void initState(BuildContext context) {
    beveragePackageCardModel1 =
        createModel(context, () => BeveragePackageCardModel());
    beveragePackageCardModel2 =
        createModel(context, () => BeveragePackageCardModel());
  }

  @override
  void dispose() {
    beveragePackageCardModel1.dispose();
    beveragePackageCardModel2.dispose();
  }
}
