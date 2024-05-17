import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_selector_popup_model.dart';
export 'vendor_selector_popup_model.dart';

class VendorSelectorPopupWidget extends StatefulWidget {
  const VendorSelectorPopupWidget({super.key});

  @override
  State<VendorSelectorPopupWidget> createState() =>
      _VendorSelectorPopupWidgetState();
}

class _VendorSelectorPopupWidgetState extends State<VendorSelectorPopupWidget> {
  late VendorSelectorPopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorSelectorPopupModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<VendorsRow>>(
      future: VendorsTable().queryRows(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitChasingDots(
                color: FlutterFlowTheme.of(context).secondary,
                size: 50.0,
              ),
            ),
          );
        }
        List<VendorsRow> containerVendorsRowList = snapshot.data!;
        return Container(
          width: 259.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: FutureBuilder<List<VendorsRow>>(
            future: VendorsTable().queryRows(
              queryFn: (q) => q,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitChasingDots(
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<VendorsRow> dropDownVendorsRowList = snapshot.data!;
              return FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController ??=
                    FormFieldController<String>(
                  _model.dropDownValue ??= '',
                ),
                options: List<String>.from(containerVendorsRowList
                    .map((e) => e.pKVendors.toString())
                    .toList()),
                optionLabels: [''],
                onChanged: (val) => setState(() => _model.dropDownValue = val),
                width: 300.0,
                height: 0.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Please select...',
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
                isMultiSelect: false,
              );
            },
          ),
        );
      },
    );
  }
}
