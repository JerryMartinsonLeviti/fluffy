import '/archive/markdown_entry_widget/markdown_entry_widget_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/vendor_flow/vendor_offering/locations_selector/locations_selector_widget.dart';
import 'product_detail_config_widget_widget.dart'
    show ProductDetailConfigWidgetWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailConfigWidgetModel
    extends FlutterFlowModel<ProductDetailConfigWidgetWidget> {
  ///  Local state fields for this component.

  UnitOfMeasure? unitOfMeasure = UnitOfMeasure.Guest;

  int? priceInCents = 100;

  ///  State fields for stateful widgets in this component.

  // Model for LocationsSelector component.
  late LocationsSelectorModel locationsSelectorModel;
  // State field(s) for TypeDropDown widget.
  String? typeDropDownValue;
  FormFieldController<String>? typeDropDownValueController;
  // State field(s) for InternalNameTextField widget.
  FocusNode? internalNameTextFieldFocusNode;
  TextEditingController? internalNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      internalNameTextFieldTextControllerValidator;
  // State field(s) for DisplayNameTextField widget.
  FocusNode? displayNameTextFieldFocusNode;
  TextEditingController? displayNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      displayNameTextFieldTextControllerValidator;
  // State field(s) for PriceTextField widget.
  FocusNode? priceTextFieldFocusNode;
  TextEditingController? priceTextFieldTextController;
  String? Function(BuildContext, String?)?
      priceTextFieldTextControllerValidator;
  // State field(s) for UoMDropDown widget.
  String? uoMDropDownValue;
  FormFieldController<String>? uoMDropDownValueController;

  @override
  void initState(BuildContext context) {
    locationsSelectorModel =
        createModel(context, () => LocationsSelectorModel());
  }

  @override
  void dispose() {
    locationsSelectorModel.dispose();
    internalNameTextFieldFocusNode?.dispose();
    internalNameTextFieldTextController?.dispose();

    displayNameTextFieldFocusNode?.dispose();
    displayNameTextFieldTextController?.dispose();

    priceTextFieldFocusNode?.dispose();
    priceTextFieldTextController?.dispose();
  }
}
