import '/backend/supabase/supabase.dart';
import '/components/item_config_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'food_package_card_model.dart';
export 'food_package_card_model.dart';

class FoodPackageCardWidget extends StatefulWidget {
  const FoodPackageCardWidget({
    super.key,
    required this.packageRow,
    required this.dbRefresh,
  });

  final PackagesRow? packageRow;
  final Future Function()? dbRefresh;

  @override
  State<FoodPackageCardWidget> createState() => _FoodPackageCardWidgetState();
}

class _FoodPackageCardWidgetState extends State<FoodPackageCardWidget> {
  late FoodPackageCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodPackageCardModel());

    _model.minSelectionTextController ??= TextEditingController(
        text: widget.packageRow?.minSelections?.toString());
    _model.minSelectionFocusNode ??= FocusNode();

    _model.maxSelectionTextController ??= TextEditingController(
        text: widget.packageRow?.maxSelections?.toString());
    _model.maxSelectionFocusNode ??= FocusNode();

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
      constraints: BoxConstraints(
        maxWidth: 300.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
        ),
      ),
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            valueOrDefault<String>(
              widget.packageRow?.displayName,
              'NoPKGName',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          Container(
            width: 200.0,
            height: 3.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Price: ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                formatNumber(
                  functions
                      .centsIntToDollarDouble(widget.packageRow!.priceInCents!),
                  formatType: FormatType.decimal,
                  decimalType: DecimalType.automatic,
                  currency: '',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                ' per ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.packageRow?.unitOfMeasure,
                  'uom',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          Text(
            'Package Includes',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget.packageRow?.publicDescription,
              'noDesc',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
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
              Text(
                'Choose ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              if (widget.packageRow?.minSelections != null)
                Text(
                  'a Minimum of  ${widget.packageRow?.minSelections?.toString()}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              if (widget.packageRow?.maxSelections != null)
                Text(
                  ' Up to ${widget.packageRow?.maxSelections?.toString()}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              Text(
                ' Selections:',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          FutureBuilder<List<PackageItemRow>>(
            future:
                (_model.requestCompleter2 ??= Completer<List<PackageItemRow>>()
                      ..complete(PackageItemTable().queryRows(
                        queryFn: (q) => q
                            .eq(
                              'FK_Package',
                              widget.packageRow?.pKPackages,
                            )
                            .order('created_at'),
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
              List<PackageItemRow> pkgItemDbPackageItemRowList = snapshot.data!;
              return Container(
                decoration: BoxDecoration(),
                child: Builder(
                  builder: (context) {
                    final pkgitem = pkgItemDbPackageItemRowList.toList();
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(pkgitem.length, (pkgitemIndex) {
                        final pkgitemItem = pkgitem[pkgitemIndex];
                        return FutureBuilder<List<ItemsRow>>(
                          future: (_model.requestCompleter1 ??=
                                  Completer<List<ItemsRow>>()
                                    ..complete(ItemsTable().querySingleRow(
                                      queryFn: (q) => q.eq(
                                        'PK_Items',
                                        pkgitemItem.fKItem,
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<ItemsRow> itemDbItemsRowList = snapshot.data!;
                            final itemDbItemsRow = itemDbItemsRowList.isNotEmpty
                                ? itemDbItemsRowList.first
                                : null;
                            return Container(
                              decoration: BoxDecoration(),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                itemDbItemsRow?.displayName,
                                                'Item Name',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Text(
                                              ' - ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                itemDbItemsRow
                                                    ?.publicDescription,
                                                'Item Description',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    );
                  },
                ),
              );
            },
          ),
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).accent4,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Add',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).alternate,
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
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              if (FFAppState().DevModeEnabled)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      _model.noEdit = !_model.noEdit;
                    });
                  },
                  child: Icon(
                    Icons.settings_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'More',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).alternate,
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
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).accent4,
          ),
          if (!_model.noEdit)
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.minSelectionTextController,
                          focusNode: _model.minSelectionFocusNode,
                          onFieldSubmitted: (_) async {
                            await PackagesTable().update(
                              data: {
                                'minSelections': int.tryParse(
                                    _model.minSelectionTextController.text),
                              },
                              matchingRows: (rows) => rows.eq(
                                'PK_Packages',
                                widget.packageRow?.pKPackages,
                              ),
                            );
                            await widget.dbRefresh?.call();
                            setState(() => _model.requestCompleter2 = null);
                            await _model.waitForRequestCompleted2();
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'minSelection',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.minSelectionTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.maxSelectionTextController,
                          focusNode: _model.maxSelectionFocusNode,
                          onFieldSubmitted: (_) async {
                            await PackagesTable().update(
                              data: {
                                'maxSelections': int.tryParse(
                                    _model.maxSelectionTextController.text),
                              },
                              matchingRows: (rows) => rows.eq(
                                'PK_Packages',
                                widget.packageRow?.pKPackages,
                              ),
                            );
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'maxSelection\n',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.maxSelectionTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
                FutureBuilder<List<ItemsRow>>(
                  future:
                      (_model.requestCompleter3 ??= Completer<List<ItemsRow>>()
                            ..complete(ItemsTable().queryRows(
                              queryFn: (q) => q
                                  .eq(
                                    'FK_Vendor',
                                    widget.packageRow?.fKVendor,
                                  )
                                  .order('created_at'),
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
                    List<ItemsRow> itemDBItemsRowList = snapshot.data!;
                    return Container(
                      decoration: BoxDecoration(),
                      child: FutureBuilder<List<PackageItemRow>>(
                        future: PackageItemTable().queryRows(
                          queryFn: (q) => q.eq(
                            'FK_Package',
                            widget.packageRow?.pKPackages,
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
                          List<PackageItemRow> pkgItemDBPackageItemRowList =
                              snapshot.data!;
                          return Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Builder(
                                  builder: (context) {
                                    final itemRow = itemDBItemsRowList.toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(itemRow.length,
                                          (itemRowIndex) {
                                        final itemRowItem =
                                            itemRow[itemRowIndex];
                                        return ItemConfigComponentWidget(
                                          key: Key(
                                              'Keyvhg_${itemRowIndex}_of_${itemRow.length}'),
                                          itemRow: itemRowItem,
                                          packageRow: widget.packageRow!,
                                          onItemDbChange: () async {
                                            setState(() => _model
                                                .requestCompleter3 = null);
                                            await _model
                                                .waitForRequestCompleted3();
                                            setState(() => _model
                                                .requestCompleter2 = null);
                                            await _model
                                                .waitForRequestCompleted2();
                                            setState(() => _model
                                                .requestCompleter1 = null);
                                            await _model
                                                .waitForRequestCompleted1();
                                            FFAppState().update(() {});
                                            await widget.dbRefresh?.call();
                                          },
                                        );
                                      }),
                                    );
                                  },
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    await ItemsTable().insert({
                                      'public_description': 'no Description',
                                      'display_name': 'no Name',
                                      'FK_Vendor': widget.packageRow?.fKVendor,
                                      'unit_of_measure': 'Guest',
                                    });
                                    setState(
                                        () => _model.requestCompleter3 = null);
                                    await _model.waitForRequestCompleted3();
                                    _model.updatePage(() {});
                                  },
                                  text: 'AddNewItem',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                          );
                        },
                      ),
                    );
                  },
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Save pressed ...');
                      },
                      text: 'Save',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Exit pressed ...');
                      },
                      text: 'Exit',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
