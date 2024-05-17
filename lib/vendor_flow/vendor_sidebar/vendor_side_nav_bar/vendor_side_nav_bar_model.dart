import '/components/vendor_side_nav_component/vendor_side_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vendor_side_nav_bar_widget.dart' show VendorSideNavBarWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorSideNavBarModel extends FlutterFlowModel<VendorSideNavBarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for VendorSideNavComponent component.
  late VendorSideNavComponentModel vendorSideNavComponentModel;

  @override
  void initState(BuildContext context) {
    vendorSideNavComponentModel =
        createModel(context, () => VendorSideNavComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    vendorSideNavComponentModel.dispose();
  }
}
