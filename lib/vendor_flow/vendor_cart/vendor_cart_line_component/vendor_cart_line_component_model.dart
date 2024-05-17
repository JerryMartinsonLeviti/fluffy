import '/flutter_flow/flutter_flow_util.dart';
import '/vendor_flow/vendor_cart/cart_status_component/cart_status_component_widget.dart';
import '/vendor_flow/vendor_cart/vendor_cart_detail/vendor_cart_detail_widget.dart';
import 'vendor_cart_line_component_widget.dart'
    show VendorCartLineComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VendorCartLineComponentModel
    extends FlutterFlowModel<VendorCartLineComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for CartStatusComponent component.
  late CartStatusComponentModel cartStatusComponentModel;
  // Model for VendorCartDetail component.
  late VendorCartDetailModel vendorCartDetailModel;

  @override
  void initState(BuildContext context) {
    cartStatusComponentModel =
        createModel(context, () => CartStatusComponentModel());
    vendorCartDetailModel = createModel(context, () => VendorCartDetailModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    cartStatusComponentModel.dispose();
    vendorCartDetailModel.dispose();
  }
}
