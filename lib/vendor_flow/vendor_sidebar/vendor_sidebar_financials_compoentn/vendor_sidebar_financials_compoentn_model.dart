import '/components/icon_financials/icon_financials_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_sidebar_financials_compoentn_widget.dart'
    show VendorSidebarFinancialsCompoentnWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
