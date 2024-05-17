import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendor_flow/vendor_offering/product_detail_config_widget/product_detail_config_widget_widget.dart';
import 'product_entry_row_widget.dart' show ProductEntryRowWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductEntryRowModel extends FlutterFlowModel<ProductEntryRowWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for ProductDetailConfigWidget component.
  late ProductDetailConfigWidgetModel productDetailConfigWidgetModel;

  @override
  void initState(BuildContext context) {
    productDetailConfigWidgetModel =
        createModel(context, () => ProductDetailConfigWidgetModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    productDetailConfigWidgetModel.dispose();
  }
}
