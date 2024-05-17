import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'dev_p_k_selection_model.dart';
export 'dev_p_k_selection_model.dart';

class DevPKSelectionWidget extends StatefulWidget {
  const DevPKSelectionWidget({super.key});

  @override
  State<DevPKSelectionWidget> createState() => _DevPKSelectionWidgetState();
}

class _DevPKSelectionWidgetState extends State<DevPKSelectionWidget> {
  late DevPKSelectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DevPKSelectionModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Builder(
          builder: (context) {
            if (FFAppState().DevModeEnabled) {
              return Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FutureBuilder<List<PlannersRow>>(
                          future: PlannersTable().queryRows(
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<PlannersRow> plannerDropDownPlannersRowList =
                                snapshot.data!;
                            return FlutterFlowDropDown<int>(
                              controller:
                                  _model.plannerDropDownValueController ??=
                                      FormFieldController<int>(
                                _model.plannerDropDownValue ??=
                                    FFAppState().PKPlanner,
                              ),
                              options: List<int>.from(
                                  plannerDropDownPlannersRowList
                                      .map((e) => e.pKPlanners)
                                      .toList()),
                              optionLabels: plannerDropDownPlannersRowList
                                  .map((e) => e.plannerName)
                                  .withoutNulls
                                  .toList(),
                              onChanged: (val) async {
                                setState(
                                    () => _model.plannerDropDownValue = val);
                                setState(() {
                                  FFAppState().PKPlanner = valueOrDefault<int>(
                                    _model.plannerDropDownValue,
                                    0,
                                  );
                                });
                              },
                              width: 300.0,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Please select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                              labelText: 'PlannerPK',
                              labelTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            );
                          },
                        ),
                        FutureBuilder<List<VendorsRow>>(
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<VendorsRow> vendorDropDownVendorsRowList =
                                snapshot.data!;
                            return FlutterFlowDropDown<int>(
                              controller:
                                  _model.vendorDropDownValueController ??=
                                      FormFieldController<int>(
                                _model.vendorDropDownValue ??=
                                    FFAppState().PKVendors,
                              ),
                              options: List<int>.from(
                                  vendorDropDownVendorsRowList
                                      .map((e) => e.pKVendors)
                                      .toList()),
                              optionLabels: vendorDropDownVendorsRowList
                                  .map((e) => e.vendorName)
                                  .withoutNulls
                                  .toList(),
                              onChanged: (val) async {
                                setState(
                                    () => _model.vendorDropDownValue = val);
                                setState(() {
                                  FFAppState().PKVendors =
                                      _model.vendorDropDownValue!;
                                });
                              },
                              width: 300.0,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Please select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                              labelText: 'VendorPK',
                              labelTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            );
                          },
                        ),
                        FutureBuilder<List<LiaisonsRow>>(
                          future: LiaisonsTable().queryRows(
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<LiaisonsRow> liaisonDropDownLiaisonsRowList =
                                snapshot.data!;
                            return FlutterFlowDropDown<int>(
                              controller:
                                  _model.liaisonDropDownValueController ??=
                                      FormFieldController<int>(
                                _model.liaisonDropDownValue ??=
                                    FFAppState().PKLiaison,
                              ),
                              options: List<int>.from(
                                  liaisonDropDownLiaisonsRowList
                                      .map((e) => e.pKLiaisons)
                                      .toList()),
                              optionLabels: liaisonDropDownLiaisonsRowList
                                  .map((e) => e.liaisonName)
                                  .withoutNulls
                                  .toList(),
                              onChanged: (val) async {
                                setState(
                                    () => _model.liaisonDropDownValue = val);
                                setState(() {
                                  FFAppState().PKLiaison =
                                      _model.liaisonDropDownValue!;
                                });
                              },
                              width: 300.0,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Please select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                              labelText: 'Liaison\n',
                              labelTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Container(
                decoration: const BoxDecoration(),
              );
            }
          },
        ),
      ],
    );
  }
}
