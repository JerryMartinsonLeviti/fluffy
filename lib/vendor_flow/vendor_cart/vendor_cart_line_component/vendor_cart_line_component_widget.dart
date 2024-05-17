import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendor_flow/vendor_cart/cart_status_component/cart_status_component_widget.dart';
import '/vendor_flow/vendor_cart/vendor_cart_detail/vendor_cart_detail_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'vendor_cart_line_component_model.dart';
export 'vendor_cart_line_component_model.dart';

class VendorCartLineComponentWidget extends StatefulWidget {
  const VendorCartLineComponentWidget({
    super.key,
    required this.vendorRow,
    required this.eventRow,
  });

  final VendorsRow? vendorRow;
  final EventsRow? eventRow;

  @override
  State<VendorCartLineComponentWidget> createState() =>
      _VendorCartLineComponentWidgetState();
}

class _VendorCartLineComponentWidgetState
    extends State<VendorCartLineComponentWidget> {
  late VendorCartLineComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorCartLineComponentModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<IndexViewRow>>(
      future: IndexViewTable().queryRows(
        queryFn: (q) => q
            .eq(
              'PK_Events',
              widget.eventRow?.pKEvents,
            )
            .eq(
              'PK_Vendors',
              widget.vendorRow?.pKVendors,
            )
            .not(
              'PK_Planners',
              'is',
              null,
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
        List<IndexViewRow> containerIndexViewRowList = snapshot.data!;
        return Container(
          width: 390.0,
          decoration: const BoxDecoration(),
          child: FutureBuilder<List<PlannersRow>>(
            future: PlannersTable().querySingleRow(
              queryFn: (q) => q.eq(
                'PK_Planners',
                containerIndexViewRowList.first.pKPlanners,
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
              List<PlannersRow> containerPlannersRowList = snapshot.data!;
              final containerPlannersRow = containerPlannersRowList.isNotEmpty
                  ? containerPlannersRowList.first
                  : null;
              return Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: const BoxDecoration(),
                    ),
                    Container(
                      width: double.infinity,
                      color: const Color(0x00000000),
                      child: ExpandableNotifier(
                        controller: _model.expandableExpandableController,
                        child: ExpandablePanel(
                          header: Container(
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Wrap(
                                            spacing: 0.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  containerPlannersRow
                                                      ?.plannerName,
                                                  'noPlanner',
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              widget.eventRow?.eventName,
                                              'noEventName',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'June 30, 2024',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            '6:00PM ET',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 50.0,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.eventRow?.guestCount
                                              .toString(),
                                          '-1',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cartStatusComponentModel,
                                      updateCallback: () => setState(() {}),
                                      child: const CartStatusComponentWidget(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          collapsed: Container(
                            width: 0.0,
                            height: 0.0,
                            decoration: const BoxDecoration(),
                          ),
                          expanded: Container(
                            width: 390.0,
                            height: 800.0,
                            decoration: const BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.vendorCartDetailModel,
                              updateCallback: () => setState(() {}),
                              child: const VendorCartDetailWidget(),
                            ),
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                            expandIcon: Icons.arrow_right,
                            collapseIcon: Icons.arrow_drop_down,
                            iconColor: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
