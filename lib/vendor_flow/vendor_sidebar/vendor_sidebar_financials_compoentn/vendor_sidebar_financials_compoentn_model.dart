import '/components/icon_financials/icon_financials_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_sidebar_financials_compoentn_widget.dart'
    show VendorSidebarFinancialsCompoentnWidget;
import 'package:flutter/material.dart';

class VendorSidebarFinancialsCompoentnModel
    extends FlutterFlowModel<VendorSidebarFinancialsCompoentnWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconFinancials component.
  late IconFinancialsModel iconFinancialsModel;

  @override
  void initState(BuildContext context) {
    iconFinancialsModel = createModel(context, () => IconFinancialsModel());
  }

  @override
  void dispose() {
    iconFinancialsModel.dispose();
  }
}
