import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/vendor_flow/vendor_offering/product_entry_row/product_entry_row_widget.dart';
import 'vendor_product_config_widget.dart' show VendorProductConfigWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorProductConfigModel
    extends FlutterFlowModel<VendorProductConfigWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ProductEntryRow component.
  late ProductEntryRowModel productEntryRowModel;

  @override
  void initState(BuildContext context) {
    productEntryRowModel = createModel(context, () => ProductEntryRowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    productEntryRowModel.dispose();
  }
}
