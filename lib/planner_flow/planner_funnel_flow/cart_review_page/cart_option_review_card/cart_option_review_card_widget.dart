import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_funnel_flow/cart_review_page/cart_summary_component/cart_summary_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_option_review_card_model.dart';
export 'cart_option_review_card_model.dart';

class CartOptionReviewCardWidget extends StatefulWidget {
  const CartOptionReviewCardWidget({
    super.key,
    required this.cartRow,
    required this.onPressRemove,
    required this.onUpdateCartState,
    required this.eventRow,
  });

  final CartsRow? cartRow;
  final Future Function()? onPressRemove;
  final Future Function()? onUpdateCartState;
  final EventsRow? eventRow;

  @override
  State<CartOptionReviewCardWidget> createState() =>
      _CartOptionReviewCardWidgetState();
}

class _CartOptionReviewCardWidgetState
    extends State<CartOptionReviewCardWidget> {
  late CartOptionReviewCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartOptionReviewCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<VenuesRow>>(
      future: VenuesTable().querySingleRow(
        queryFn: (q) => q.eq(
          'PK_Venues',
          widget.cartRow?.fKVenue,
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
        List<VenuesRow> containerVenuesRowList = snapshot.data!;
        final containerVenuesRow = containerVenuesRowList.isNotEmpty
            ? containerVenuesRowList.first
            : null;
        return Container(
          constraints: BoxConstraints(
            maxWidth: 300.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
          child: FutureBuilder<List<VendorsRow>>(
            future: VendorsTable().querySingleRow(
              queryFn: (q) => q.eq(
                'PK_Vendors',
                containerVenuesRow?.fKVendor,
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
              List<VendorsRow> containerVendorsRowList = snapshot.data!;
              final containerVendorsRow = containerVendorsRowList.isNotEmpty
                  ? containerVendorsRowList.first
                  : null;
              return Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Text(
                                    'Option  ${widget.cartRow?.pKCarts?.toString()}',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 30.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                                Text(
                                  'Price Details',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        wrapWithModel(
                          model: _model.cartSummaryComponentModel,
                          updateCallback: () => setState(() {}),
                          child: CartSummaryComponentWidget(
                            cartRow: widget.cartRow!,
                            venueRow: containerVenuesRow!,
                            vendorRow: containerVendorsRow!,
                            eventRow: widget.eventRow!,
                            onPressRemoved: () async {
                              await widget.onPressRemove?.call();
                            },
                            onPressSendProposal: () async {
                              await widget.onUpdateCartState?.call();
                            },
                            onPressVerifyCart: () async {
                              await widget.onUpdateCartState?.call();
                            },
                          ),
                        ),
                      ],
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
