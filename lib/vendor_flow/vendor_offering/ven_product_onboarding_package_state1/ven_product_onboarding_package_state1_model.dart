import '/components/package_entry_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ven_product_onboarding_package_state1_widget.dart'
    show VenProductOnboardingPackageState1Widget;
import 'package:flutter/material.dart';

class VenProductOnboardingPackageState1Model
    extends FlutterFlowModel<VenProductOnboardingPackageState1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for PackageEntryRow component.
  late PackageEntryRowModel packageEntryRowModel;

  @override
  void initState(BuildContext context) {
    packageEntryRowModel = createModel(context, () => PackageEntryRowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    packageEntryRowModel.dispose();
  }
}
