import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'venue_card_component_model.dart';
export 'venue_card_component_model.dart';

class VenueCardComponentWidget extends StatefulWidget {
  const VenueCardComponentWidget({
    super.key,
    required this.venueRow,
  });

  final VenuesRow? venueRow;

  @override
  State<VenueCardComponentWidget> createState() =>
      _VenueCardComponentWidgetState();
}

class _VenueCardComponentWidgetState extends State<VenueCardComponentWidget> {
  late VenueCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VenueCardComponentModel());

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
      future: VendorsTable().querySingleRow(
        queryFn: (q) => q.eq(
          'PK_Vendors',
          widget.venueRow?.fKVendor,
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
        return InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            _model.cartrows = await CartsTable().queryRows(
              queryFn: (q) => q
                  .eq(
                    'FK_Venue',
                    widget.venueRow?.pKVenues,
                  )
                  .eq(
                    'FK_Event',
                    FFAppState().PKActiveEvent,
                  ),
            );
            if ((_model.cartrows != null && (_model.cartrows)!.isNotEmpty) ==
                true) {
              context.pushNamed(
                'ListingPageCopy',
                queryParameters: {
                  'venuePK': serializeParam(
                    widget.venueRow?.pKVenues,
                    ParamType.int,
                  ),
                  'vendorPK': serializeParam(
                    containerVendorsRow?.pKVendors,
                    ParamType.int,
                  ),
                  'cartPK': serializeParam(
                    _model.cartrows?.first?.pKCarts,
                    ParamType.int,
                  ),
                }.withoutNulls,
              );
            } else {
              _model.newCart = await CartsTable().insert({
                'FK_Event': FFAppState().PKActiveEvent,
                'FK_Venue': widget.venueRow?.pKVenues,
                'cart_name': 'new cart',
              });

              context.pushNamed(
                'ListingPageCopy',
                queryParameters: {
                  'venuePK': serializeParam(
                    widget.venueRow?.pKVenues,
                    ParamType.int,
                  ),
                  'vendorPK': serializeParam(
                    containerVendorsRow?.pKVendors,
                    ParamType.int,
                  ),
                  'cartPK': serializeParam(
                    _model.newCart?.pKCarts,
                    ParamType.int,
                  ),
                }.withoutNulls,
              );
            }

            setState(() {});
          },
          child: Container(
            width: 200.0,
            height: 300.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.81, -0.72),
                      child: Icon(
                        Icons.favorite_border,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FutureBuilder<List<AssetCollectionsViewRow>>(
                        future: AssetCollectionsViewTable().querySingleRow(
                          queryFn: (q) => q
                              .eq(
                                'type_name',
                                'Image',
                              )
                              .eq(
                                'ref_name',
                                'Venue',
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
                          List<AssetCollectionsViewRow>
                              containerAssetCollectionsViewRowList =
                              snapshot.data!;
                          final containerAssetCollectionsViewRow =
                              containerAssetCollectionsViewRowList.isNotEmpty
                                  ? containerAssetCollectionsViewRowList.first
                                  : null;
                          return Container(
                            decoration: BoxDecoration(),
                            child: Container(
                              width: 160.0,
                              height: 160.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://picsum.photos/seed/159/600',
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      containerVendorsRow?.vendorName,
                      'noVendor',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.venueRow?.restaurantLocationName,
                      'NoVenueName',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Hello World',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '\$196 Per Person',
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
          ),
        );
      },
    );
  }
}
