import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/components/text_box_update_modal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listing_restaurant_detail_component_model.dart';
export 'listing_restaurant_detail_component_model.dart';

class ListingRestaurantDetailComponentWidget extends StatefulWidget {
  const ListingRestaurantDetailComponentWidget({super.key});

  @override
  State<ListingRestaurantDetailComponentWidget> createState() =>
      _ListingRestaurantDetailComponentWidgetState();
}

class _ListingRestaurantDetailComponentWidgetState
    extends State<ListingRestaurantDetailComponentWidget> {
  late ListingRestaurantDetailComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => ListingRestaurantDetailComponentModel());

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
      constraints: BoxConstraints(
        minWidth: 380.0,
        maxHeight: 1000.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Image.network(
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/bjcNcUcJFzipGWqoNchx/assets/uy289fi8wx42/Image_5-18-24_at_3.07_PM.jpeg',
                        width: 581.0,
                        height: 331.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (vendorDBContainerVendorsRow?.vendorName != null &&
                        vendorDBContainerVendorsRow?.vendorName != '')
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Text(
                          valueOrDefault<String>(
                            vendorDBContainerVendorsRow?.vendorName,
                            'Vendor Name',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    if (venueDBContainerVenuesRow?.restaurantLocationName !=
                            null &&
                        venueDBContainerVenuesRow?.restaurantLocationName != '')
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Text(
                          valueOrDefault<String>(
                            venueDBContainerVenuesRow?.restaurantLocationName,
                            'Venue Name',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                  ]
                      .divide(SizedBox(width: 20.0))
                      .addToStart(SizedBox(width: 20.0)),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 10.0),
                    child: Text(
                      'About ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 26.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Wrap(
                    spacing: 0.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(1.0, -1.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                      child: Text(
                                        'VendorDescription',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    if (FFAppState().DevModeEnabled)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: Builder(
                                          builder: (context) => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child:
                                                        TextBoxUpdateModalWidget(
                                                      existingText:
                                                          vendorDBContainerVendorsRow
                                                              ?.vendorDescription,
                                                      onSave: (newText) async {
                                                        await VendorsTable()
                                                            .update(
                                                          data: {
                                                            'vendor_description':
                                                                newText,
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'PK_Vendors',
                                                            widget.vendorPK,
                                                          ),
                                                        );
                                                        setState(() {});
                                                      },
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            child: Icon(
                                              Icons.edit,
                                              color: Color(0xFF57636C),
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (vendorDBContainerVendorsRow
                                          ?.vendorDescription !=
                                      null &&
                                  vendorDBContainerVendorsRow
                                          ?.vendorDescription !=
                                      '')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        vendorDBContainerVendorsRow
                                            ?.vendorDescription,
                                        'Vendor Description',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(1.0, -1.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                      child: Text(
                                        'VenueDescription',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    if (FFAppState().DevModeEnabled)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: Builder(
                                          builder: (context) => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child:
                                                        TextBoxUpdateModalWidget(
                                                      existingText:
                                                          venueDBContainerVenuesRow
                                                              ?.venueDescription,
                                                      onSave: (newText) async {
                                                        await VenuesTable()
                                                            .update(
                                                          data: {
                                                            'venue_description':
                                                                newText,
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'PK_Venues',
                                                            widget.venuePK,
                                                          ),
                                                        );
                                                        setState(() {});
                                                      },
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            child: Icon(
                                              Icons.edit,
                                              color: Color(0xFF57636C),
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (venueDBContainerVenuesRow?.venueDescription !=
                                      null &&
                                  venueDBContainerVenuesRow?.venueDescription !=
                                      '')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        venueDBContainerVenuesRow
                                            ?.venueDescription,
                                        'Venue Description',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: FutureBuilder<List<AddressesRow>>(
              future:
                  (_model.requestCompleter ??= Completer<List<AddressesRow>>()
                        ..complete(AddressesTable().querySingleRow(
                          queryFn: (q) => q.eq(
                            'PK_Addresses',
                            venueDBContainerVenuesRow?.fKAddress,
                          ),
                        )))
                      .future,
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
                List<AddressesRow> addressAddressesRowList = snapshot.data!;
                final addressAddressesRow = addressAddressesRowList.isNotEmpty
                    ? addressAddressesRowList.first
                    : null;
                return wrapWithModel(
                  model: _model.addressModel,
                  updateCallback: () => setState(() {}),
                  child: AddressWidget(
                    street1: addressAddressesRow?.streetName1,
                    street2: addressAddressesRow?.streetName2,
                    city: addressAddressesRow?.city,
                    state: addressAddressesRow?.regionCode,
                    zip: addressAddressesRow?.postalCode,
                    country: addressAddressesRow?.countryCode,
                    addressPK: addressAddressesRow!.pKAddresses,
                    onSave: () async {
                      setState(() => _model.requestCompleter = null);
                      await _model.waitForRequestCompleted();
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
