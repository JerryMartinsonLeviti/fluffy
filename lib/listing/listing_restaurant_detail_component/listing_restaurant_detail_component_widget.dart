import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/components/text_box_update_modal_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listing_restaurant_detail_component_model.dart';
export 'listing_restaurant_detail_component_model.dart';

class ListingRestaurantDetailComponentWidget extends StatefulWidget {
  const ListingRestaurantDetailComponentWidget({
    super.key,
    required this.vendorRow,
    required this.venueRow,
  });

  final VendorsRow? vendorRow;
  final VenuesRow? venueRow;

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

    _model.vendorNameTFTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.vendorRow?.vendorName,
      'noNameYet',
    ));
    _model.vendorNameTFFocusNode ??= FocusNode();

    _model.venueNameTFTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.venueRow?.restaurantLocationName,
      'Venue Location',
    ));
    _model.venueNameTFFocusNode ??= FocusNode();

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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Edit Your Selections',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFBA5845),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Update & Close',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (widget.vendorRow?.vendorName != null &&
                                widget.vendorRow?.vendorName != '')
                              Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.editVendorMode =
                                        !_model.editVendorMode;
                                    setState(() {});
                                  },
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.vendorRow?.vendorName,
                                      'vend_name',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          fontSize: 30.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.newVendor =
                                        await VendorsTable().insert({
                                      'vendor_name': _model
                                          .vendorNameTFTextController.text,
                                    });
                                    await VenuesTable().update(
                                      data: {
                                        'FK_Vendor':
                                            _model.newVendor?.pKVendors,
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'PK_Venues',
                                        widget.venueRow?.pKVenues,
                                      ),
                                    );
                                    FFAppState().PKVendors =
                                        _model.newVendor!.pKVendors;
                                    FFAppState().update(() {});

                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.add_box,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Container(
                                  width: 200.0,
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible: _model.editVendorMode,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.vendorNameTFTextController,
                                        focusNode: _model.vendorNameTFFocusNode,
                                        onFieldSubmitted: (_) async {
                                          await VendorsTable().update(
                                            data: {
                                              'vendor_name': _model
                                                  .vendorNameTFTextController
                                                  .text,
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'PK_Vendors',
                                              widget.vendorRow?.pKVendors,
                                            ),
                                          );

                                          FFAppState().update(() {});
                                        },
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Vendor Name',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .vendorNameTFTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            FutureBuilder<List<VendorsRow>>(
                              future: VendorsTable().queryRows(
                                queryFn: (q) => q.order('vendor_name'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitChasingDots(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<VendorsRow> dropDownVendorsRowList =
                                    snapshot.data!;
                                return FlutterFlowDropDown<int>(
                                  controller:
                                      _model.dropDownValueController1 ??=
                                          FormFieldController<int>(
                                    _model.dropDownValue1 ??=
                                        widget.vendorRow?.pKVendors,
                                  ),
                                  options: List<int>.from(dropDownVendorsRowList
                                      .map((e) => e.pKVendors)
                                      .toList()),
                                  optionLabels: dropDownVendorsRowList
                                      .map((e) => e.vendorName)
                                      .withoutNulls
                                      .toList(),
                                  onChanged: (val) async {
                                    setState(() => _model.dropDownValue1 = val);
                                    await VenuesTable().update(
                                      data: {
                                        'FK_Vendor': _model.dropDownValue1,
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'PK_Venues',
                                        widget.venueRow?.pKVenues,
                                      ),
                                    );
                                    FFAppState().PKVendors =
                                        _model.dropDownValue1!;
                                    FFAppState().update(() {});
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
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (widget.venueRow?.restaurantLocationName !=
                                    null &&
                                widget.venueRow?.restaurantLocationName != '')
                              Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.editVenueNameMode =
                                        !_model.editVenueNameMode;
                                    setState(() {});
                                  },
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.venueRow?.restaurantLocationName,
                                      'venueName',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          fontSize: 30.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.newVenue =
                                        await VenuesTable().insert({
                                      'FK_Vendor': FFAppState().PKVendors,
                                      'RestaurantLocationName':
                                          _model.venueNameTFTextController.text,
                                      'taxRate': .08,
                                      'gratuityRate': .18,
                                    });

                                    FFAppState().update(() {});

                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.add_box,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Container(
                                  width: 200.0,
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible: _model.editVenueNameMode,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.venueNameTFTextController,
                                        focusNode: _model.venueNameTFFocusNode,
                                        onFieldSubmitted: (_) async {
                                          await VenuesTable().update(
                                            data: {
                                              'RestaurantLocationName': _model
                                                  .venueNameTFTextController
                                                  .text,
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'PK_Venues',
                                              widget.vendorRow?.pKVendors,
                                            ),
                                          );

                                          FFAppState().update(() {});
                                        },
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Venue Name',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .venueNameTFTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            FutureBuilder<List<VendorsRow>>(
                              future: VendorsTable().queryRows(
                                queryFn: (q) => q.order('vendor_name'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitChasingDots(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<VendorsRow> dropDownVendorsRowList =
                                    snapshot.data!;
                                return FlutterFlowDropDown<int>(
                                  controller:
                                      _model.dropDownValueController2 ??=
                                          FormFieldController<int>(
                                    _model.dropDownValue2 ??=
                                        widget.vendorRow?.pKVendors,
                                  ),
                                  options: List<int>.from(dropDownVendorsRowList
                                      .map((e) => e.pKVendors)
                                      .toList()),
                                  optionLabels: dropDownVendorsRowList
                                      .map((e) => e.vendorName)
                                      .withoutNulls
                                      .toList(),
                                  onChanged: (val) async {
                                    setState(() => _model.dropDownValue2 = val);
                                    await VenuesTable().update(
                                      data: {
                                        'FK_Vendor': _model.dropDownValue2,
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'PK_Venues',
                                        widget.venueRow?.pKVenues,
                                      ),
                                    );
                                    FFAppState().PKVendors =
                                        _model.dropDownValue2!;
                                    FFAppState().update(() {});
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
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ],
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
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
                                              highlightColor:
                                                  Colors.transparent,
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
                                                        existingText: widget
                                                            .vendorRow
                                                            ?.vendorDescription,
                                                        onSave:
                                                            (newText) async {
                                                          await VendorsTable()
                                                              .update(
                                                            data: {
                                                              'vendor_description':
                                                                  newText,
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'PK_Vendors',
                                                              widget.vendorRow
                                                                  ?.pKVendors,
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
                                if (widget.vendorRow?.vendorDescription !=
                                        null &&
                                    widget.vendorRow?.vendorDescription != '')
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 30.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.vendorRow?.vendorDescription,
                                          'vend desc',
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
                                              highlightColor:
                                                  Colors.transparent,
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
                                                        existingText: widget
                                                            .venueRow
                                                            ?.venueDescription,
                                                        onSave:
                                                            (newText) async {
                                                          await VenuesTable()
                                                              .update(
                                                            data: {
                                                              'venue_description':
                                                                  newText,
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'PK_Venues',
                                                              widget.venueRow
                                                                  ?.pKVenues,
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
                                if (widget.venueRow?.venueDescription != null &&
                                    widget.venueRow?.venueDescription != '')
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 30.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.venueRow?.venueDescription,
                                          'venue_desc',
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
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: FutureBuilder<List<AddressesRow>>(
              future:
                  (_model.requestCompleter ??= Completer<List<AddressesRow>>()
                        ..complete(AddressesTable().querySingleRow(
                          queryFn: (q) => q.eq(
                            'PK_Addresses',
                            widget.venueRow?.fKAddress,
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

                      FFAppState().update(() {});
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
