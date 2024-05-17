import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/vendor_flow/vendor_chip/vendor_chip_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_main_dashboard_component/vendor_main_dashboard_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_side_bar_nav_component/vendor_side_bar_nav_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_side_bar_requests_to_book_component/vendor_side_bar_requests_to_book_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_financials_compoentn/vendor_sidebar_financials_compoentn_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_manage_event_component/vendor_sidebar_manage_event_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_nav_account_component/vendor_sidebar_nav_account_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_nav_communications_component/vendor_sidebar_nav_communications_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_nav_schedules_component/vendor_sidebar_nav_schedules_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_side_nav_component_model.dart';
export 'vendor_side_nav_component_model.dart';

class VendorSideNavComponentWidget extends StatefulWidget {
  const VendorSideNavComponentWidget({super.key});

  @override
  State<VendorSideNavComponentWidget> createState() =>
      _VendorSideNavComponentWidgetState();
}

class _VendorSideNavComponentWidgetState
    extends State<VendorSideNavComponentWidget> {
  late VendorSideNavComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorSideNavComponentModel());

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
          constraints: BoxConstraints(
            maxWidth: 300.0,
          ),
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowDropDown<int>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<int>(
                    _model.dropDownValue ??= 1,
                  ),
                  options: List<int>.from(containerVendorsRowList
                      .map((e) => valueOrDefault<int>(
                            e.pKVendors,
                            1,
                          ))
                      .toList()),
                  optionLabels: containerVendorsRowList
                      .map((e) => valueOrDefault<String>(
                            e.vendorName,
                            'noName',
                          ))
                      .toList(),
                  onChanged: (val) async {
                    setState(() => _model.dropDownValue = val);
                    setState(() {
                      FFAppState().PKVendors = _model.dropDownValue!;
                    });
                  },
                  width: 300.0,
                  height: 56.0,
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 120.0,
                            height: 120.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://picsum.photos/seed/395/600',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      FutureBuilder<List<VendorsRow>>(
                        future: VendorsTable().querySingleRow(
                          queryFn: (q) => q.eq(
                            'PK_Vendors',
                            FFAppState().PKVendors,
                          ),
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
                          List<VendorsRow> containerVendorsRowList =
                              snapshot.data!;
                          final containerVendorsRow =
                              containerVendorsRowList.isNotEmpty
                                  ? containerVendorsRowList.first
                                  : null;
                          return Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.vendorChipModel,
                              updateCallback: () => setState(() {}),
                              child: VendorChipWidget(
                                vendorRow: containerVendorsRow!,
                              ),
                            ),
                          );
                        },
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model:
                                      _model.vendorMainDashboardComponentModel,
                                  updateCallback: () => setState(() {}),
                                  child: VendorMainDashboardComponentWidget(),
                                ),
                              ]
                                  .divide(SizedBox(height: 30.0))
                                  .addToStart(SizedBox(height: 30.0)),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  50.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('VendorProductConfig');
                                    },
                                    child: wrapWithModel(
                                      model: _model
                                          .vendorSidebarNavAssetsComponentModel,
                                      updateCallback: () => setState(() {}),
                                      child: VendorSideBarNavComponentWidget(),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model
                                        .vendorSidebarNavSchedulesComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child:
                                        VendorSidebarNavSchedulesComponentWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model
                                        .vendorSidebarNavCommunicationsComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child:
                                        VendorSidebarNavCommunicationsComponentWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model
                                        .vendorSidebarFinancialsCompoentnModel,
                                    updateCallback: () => setState(() {}),
                                    child:
                                        VendorSidebarFinancialsCompoentnWidget(),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('VendorCartDashboard');
                                    },
                                    child: wrapWithModel(
                                      model: _model
                                          .vendorSideBarRequestsToBookComponentModel,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          VendorSideBarRequestsToBookComponentWidget(),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model
                                        .vendorSidebarManageEventComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child:
                                        VendorSidebarManageEventComponentWidget(),
                                  ),
                                ]
                                    .divide(SizedBox(height: 10.0))
                                    .around(SizedBox(height: 10.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      wrapWithModel(
                        model: _model.vendorSidebarNavAccountComponentModel,
                        updateCallback: () => setState(() {}),
                        child: VendorSidebarNavAccountComponentWidget(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
