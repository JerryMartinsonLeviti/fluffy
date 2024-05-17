import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'locations_selector_model.dart';
export 'locations_selector_model.dart';

class LocationsSelectorWidget extends StatefulWidget {
  const LocationsSelectorWidget({super.key});

  @override
  State<LocationsSelectorWidget> createState() =>
      _LocationsSelectorWidgetState();
}

class _LocationsSelectorWidgetState extends State<LocationsSelectorWidget> {
  late LocationsSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationsSelectorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 40.0,
      decoration: BoxDecoration(),
      child: FlutterFlowDropDown<String>(
        multiSelectController: _model.dropDownValueController ??=
            FormFieldController<List<String>>(null),
        options: ['Los Angeles', 'New York', 'San Francisco'],
        width: 300.0,
        height: 56.0,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        hintText: 'Locations',
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 24.0,
        ),
        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 2.0,
        borderColor: FlutterFlowTheme.of(context).alternate,
        borderWidth: 2.0,
        borderRadius: 8.0,
        margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        hidesUnderline: true,
        isOverButton: true,
        isSearchable: false,
        isMultiSelect: true,
        onMultiSelectChanged: (val) =>
            setState(() => _model.dropDownValue = val),
      ),
    );
  }
}
