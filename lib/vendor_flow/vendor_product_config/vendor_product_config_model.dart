import '/flutter_flow/flutter_flow_util.dart';
import '/vendor_flow/vendor_offering/product_entry_row/product_entry_row_widget.dart';
import 'vendor_product_config_widget.dart' show VendorProductConfigWidget;
import 'package:flutter/material.dart';

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
