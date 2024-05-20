import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/neda_user_flow_pages/neda_vendor/pending_confirmation_modal/pending_confirmation_modal_widget.dart';
import '/vendor_flow/vendor_cart/vendor_cart_line_component/vendor_cart_line_component_widget.dart';
import 'vendor_cart_dashboard_copy_widget.dart'
    show VendorCartDashboardCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorCartDashboardCopyModel
    extends FlutterFlowModel<VendorCartDashboardCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Pending_Confirmation_Modal component.
  late PendingConfirmationModalModel pendingConfirmationModalModel;

  @override
  void initState(BuildContext context) {
    pendingConfirmationModalModel =
        createModel(context, () => PendingConfirmationModalModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pendingConfirmationModalModel.dispose();
  }
}
