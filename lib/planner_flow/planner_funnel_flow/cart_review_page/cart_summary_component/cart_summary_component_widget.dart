import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cart_summary_component_model.dart';
export 'cart_summary_component_model.dart';

class CartSummaryComponentWidget extends StatefulWidget {
  const CartSummaryComponentWidget({
    super.key,
    required this.cartRow,
    required this.venueRow,
    required this.vendorRow,
    required this.onPressRemoved,
    required this.onPressSendProposal,
    required this.onPressVerifyCart,
    required this.eventRow,
  });

  final CartsRow? cartRow;
  final VenuesRow? venueRow;
  final VendorsRow? vendorRow;
  final Future Function()? onPressRemoved;
  final Future Function()? onPressSendProposal;
  final Future Function()? onPressVerifyCart;
  final EventsRow? eventRow;

  @override
  State<CartSummaryComponentWidget> createState() =>
      _CartSummaryComponentWidgetState();
}

class _CartSummaryComponentWidgetState
    extends State<CartSummaryComponentWidget> {
  late CartSummaryComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartSummaryComponentModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      constraints: const BoxConstraints(
        maxWidth: 250.0,
        maxHeight: 450.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: FlutterFlowTheme.of(context).accent1,
            offset: const Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: 125.0,
                      height: 125.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/159/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.vendorRow?.vendorName,
                        'noVendor ',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'at',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.venueRow?.restaurantLocationName,
                        'noVenue',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Text(
                  'Estimated Total: ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Text(
                  valueOrDefault<String>(
                    formatNumber(
                      widget.cartRow?.totalInCents,
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.automatic,
                      currency: '\$',
                    ),
                    '0',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'VenueDetailPage',
                        queryParameters: {
                          'venueRow': serializeParam(
                            widget.venueRow,
                            ParamType.SupabaseRow,
                          ),
                          'vendorRow': serializeParam(
                            widget.vendorRow,
                            ParamType.SupabaseRow,
                          ),
                        }.withoutNulls,
                      );
                    },
                    text: 'Edit',
                    options: FFButtonOptions(
                      width: 88.0,
                      height: 33.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).accent3,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    _model.plannerRows = await PlannersTable().queryRows(
                      queryFn: (q) => q.eq(
                        'PK_Planners',
                        FFAppState().PKVendors,
                      ),
                    );
                    _model.userInfoRows = await UserInfosTable().queryRows(
                      queryFn: (q) => q.eq(
                        'FK_Planner',
                        FFAppState().PKPlanner,
                      ),
                    );

                    context.pushNamed(
                      'MessagesByEvent',
                      queryParameters: {
                        'userInfoRow': serializeParam(
                          _model.userInfoRows?.first,
                          ParamType.SupabaseRow,
                        ),
                      }.withoutNulls,
                    );

                    setState(() {});
                  },
                  text: 'Message',
                  options: FFButtonOptions(
                    width: 100.0,
                    height: 36.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).accent2,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Builder(
                builder: (context) {
                  if (widget.cartRow?.cartState ==
                      functions.convertCartStateEnumToString(CartStates.Rfi)) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await CartsTable().update(
                            data: {
                              'CartState': CartStates.RfpSent.name,
                            },
                            matchingRows: (rows) => rows.eq(
                              'PK_Carts',
                              widget.cartRow?.pKCarts,
                            ),
                          );
                          await widget.onPressSendProposal?.call();
                          setState(() {});
                        },
                        text: 'Send Proposal',
                        options: FFButtonOptions(
                          width: 146.0,
                          height: 41.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).customColor5,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    );
                  } else if (widget.cartRow?.cartState ==
                      functions
                          .convertCartStateEnumToString(CartStates.RfpSent)) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'RequesttoBookCart',
                            queryParameters: {
                              'cartRow': serializeParam(
                                widget.cartRow,
                                ParamType.SupabaseRow,
                              ),
                              'eventRow': serializeParam(
                                widget.eventRow,
                                ParamType.SupabaseRow,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Request to Book',
                        options: FFButtonOptions(
                          width: 155.0,
                          height: 41.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).accent1,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await CartsTable().update(
                            data: {
                              'CartState': CartStates.Rfi.name,
                            },
                            matchingRows: (rows) => rows.eq(
                              'PK_Carts',
                              widget.cartRow?.pKCarts,
                            ),
                          );
                          await widget.onPressVerifyCart?.call();
                        },
                        text: 'VerifyCart',
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 41.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).customColor5,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    );
                  }
                },
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'CurrentState',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.cartRow?.cartState,
                      'noState',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await CartsTable().delete(
                    matchingRows: (rows) => rows.eq(
                      'PK_Carts',
                      widget.cartRow?.pKCarts,
                    ),
                  );
                  FFAppState().update(() {});
                  await widget.onPressRemoved?.call();
                },
                child: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Color(0xFF6E050E),
                  size: 20.0,
                ),
              ),
            ),
          ),
        ].divide(const SizedBox(height: 8.0)).around(const SizedBox(height: 8.0)),
      ),
    );
  }
}
