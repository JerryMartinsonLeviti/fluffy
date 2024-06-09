import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_config_component_model.dart';
export 'item_config_component_model.dart';

class ItemConfigComponentWidget extends StatefulWidget {
  const ItemConfigComponentWidget({
    super.key,
    required this.itemRow,
    required this.packageRow,
    required this.onItemDbChange,
  });

  final ItemsRow? itemRow;
  final PackagesRow? packageRow;
  final Future Function()? onItemDbChange;

  @override
  State<ItemConfigComponentWidget> createState() =>
      _ItemConfigComponentWidgetState();
}

class _ItemConfigComponentWidgetState extends State<ItemConfigComponentWidget> {
  late ItemConfigComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemConfigComponentModel());

    _model.itemNameTextController ??=
        TextEditingController(text: widget.itemRow?.displayName);
    _model.itemNameFocusNode ??= FocusNode();

    _model.itemDescriptonTextController ??=
        TextEditingController(text: widget.itemRow?.publicDescription);
    _model.itemDescriptonFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PackageItemGroupRow>>(
      future:
          (_model.requestCompleter2 ??= Completer<List<PackageItemGroupRow>>()
                ..complete(PackageItemGroupTable().querySingleRow(
                  queryFn: (q) => q
                      .eq(
                        'FK_Package',
                        widget.packageRow?.pKPackages,
                      )
                      .eq(
                        'FK_Item',
                        widget.itemRow?.pKItems,
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
        List<PackageItemGroupRow> pIGConfigDBPackageItemGroupRowList =
            snapshot.data!;
        final pIGConfigDBPackageItemGroupRow =
            pIGConfigDBPackageItemGroupRowList.isNotEmpty
                ? pIGConfigDBPackageItemGroupRowList.first
                : null;
        return Container(
          constraints: BoxConstraints(
            maxWidth: 380.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: FlutterFlowTheme.of(context).secondary,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(
                  minWidth: 76.0,
                ),
                decoration: BoxDecoration(),
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
                        await ItemsTable().delete(
                          matchingRows: (rows) => rows.eq(
                            'PK_Items',
                            widget.itemRow?.pKItems,
                          ),
                        );
                        await widget.onItemDbChange?.call();
                      },
                      child: Icon(
                        Icons.delete_forever_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (pIGConfigDBPackageItemGroupRow != null)
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await PackageItemGroupTable().delete(
                                matchingRows: (rows) => rows
                                    .eq(
                                      'FK_Item',
                                      widget.itemRow?.pKItems,
                                    )
                                    .eq(
                                      'FK_Package',
                                      widget.packageRow?.pKPackages,
                                    ),
                              );
                              await PackageItemGroupTable().insert({
                                'FK_ItemGroup': _model.itmGrpDDValue,
                                'FK_Package': widget.packageRow?.pKPackages,
                                'FK_Item': widget.itemRow?.pKItems,
                                'hide': false,
                              });
                              setState(() => _model.requestCompleter2 = null);
                              await _model.waitForRequestCompleted2();

                              setState(() {});
                              await widget.onItemDbChange?.call();
                            },
                            child: Icon(
                              Icons.check_box_outline_blank,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                        if (pIGConfigDBPackageItemGroupRow == null)
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await PackageItemGroupTable().delete(
                                matchingRows: (rows) => rows
                                    .eq(
                                      'FK_Package',
                                      widget.packageRow?.pKPackages,
                                    )
                                    .eq(
                                      'FK_Item',
                                      widget.itemRow?.pKItems,
                                    ),
                              );
                              setState(() => _model.requestCompleter2 = null);
                              await _model.waitForRequestCompleted2();

                              setState(() {});
                              await widget.onItemDbChange?.call();
                            },
                            child: Icon(
                              Icons.check_box,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (!valueOrDefault<bool>(
                          widget.itemRow?.isVegan,
                          false,
                        ))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await ItemsTable().update(
                                data: {
                                  'isVegan': true,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'PK_Items',
                                  widget.itemRow?.pKItems,
                                ),
                              );
                              setState(() => _model.requestCompleter2 = null);
                              await _model.waitForRequestCompleted2();

                              setState(() {});
                              await widget.onItemDbChange?.call();
                            },
                            child: Icon(
                              Icons.check_box_outline_blank,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                        if (valueOrDefault<bool>(
                          widget.itemRow?.isVegan,
                          false,
                        ))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await ItemsTable().update(
                                data: {
                                  'isVegan': false,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'PK_Items',
                                  widget.itemRow?.pKItems,
                                ),
                              );
                              setState(() => _model.requestCompleter2 = null);
                              await _model.waitForRequestCompleted2();

                              setState(() {});
                              await widget.onItemDbChange?.call();
                            },
                            child: Icon(
                              Icons.check_box,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                        Text(
                          '(V)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (!valueOrDefault<bool>(
                          widget.itemRow?.isGluttenFree,
                          false,
                        ))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await ItemsTable().update(
                                data: {
                                  'isGluttenFree': true,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'PK_Items',
                                  widget.itemRow?.pKItems,
                                ),
                              );
                              setState(() => _model.requestCompleter2 = null);
                              await _model.waitForRequestCompleted2();

                              setState(() {});
                              await widget.onItemDbChange?.call();
                            },
                            child: Icon(
                              Icons.check_box_outline_blank,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                        if (valueOrDefault<bool>(
                          widget.itemRow?.isGluttenFree,
                          false,
                        ))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await ItemsTable().update(
                                data: {
                                  'isGluttenFree': false,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'PK_Items',
                                  widget.itemRow?.pKItems,
                                ),
                              );
                              setState(() => _model.requestCompleter2 = null);
                              await _model.waitForRequestCompleted2();

                              setState(() {});
                              await widget.onItemDbChange?.call();
                            },
                            child: Icon(
                              Icons.check_box,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                        Text(
                          '(GF)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.packageRow?.pKPackages?.toString(),
                        'x',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 300.0,
                ),
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 350.0,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.itemNameTextController,
                          focusNode: _model.itemNameFocusNode,
                          onFieldSubmitted: (_) async {
                            await ItemsTable().update(
                              data: {
                                'display_name':
                                    _model.itemNameTextController.text,
                              },
                              matchingRows: (rows) => rows.eq(
                                'PK_Items',
                                widget.itemRow?.pKItems,
                              ),
                            );
                            await widget.onItemDbChange?.call();
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'ItemName',
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
                          maxLength: 100,
                          maxLengthEnforcement: MaxLengthEnforcement.none,
                          validator: _model.itemNameTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Container(
                      width: 350.0,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.itemDescriptonTextController,
                          focusNode: _model.itemDescriptonFocusNode,
                          onFieldSubmitted: (_) async {
                            await ItemsTable().update(
                              data: {
                                'public_description':
                                    _model.itemDescriptonTextController.text,
                              },
                              matchingRows: (rows) => rows.eq(
                                'PK_Items',
                                widget.itemRow?.pKItems,
                              ),
                            );
                            await widget.onItemDbChange?.call();
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'ItemDescription',
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
                          validator: _model
                              .itemDescriptonTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    FutureBuilder<List<ItemGroupsRow>>(
                      future: (_model.requestCompleter1 ??=
                              Completer<List<ItemGroupsRow>>()
                                ..complete(ItemGroupsTable().queryRows(
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
                        List<ItemGroupsRow> itemGroupDBItemGroupsRowList =
                            snapshot.data!;
                        return Container(
                          decoration: BoxDecoration(),
                          child: Visibility(
                            visible: valueOrDefault<bool>(
                              (itemGroupDBItemGroupsRowList.isNotEmpty) == true,
                              false,
                            ),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Visibility(
                                visible:
                                    itemGroupDBItemGroupsRowList.isNotEmpty,
                                child: FlutterFlowDropDown<int>(
                                  controller: _model.itmGrpDDValueController ??=
                                      FormFieldController<int>(null),
                                  options: List<int>.from(
                                      itemGroupDBItemGroupsRowList
                                          .map((e) => e.pKItemGroups)
                                          .toList()),
                                  optionLabels: itemGroupDBItemGroupsRowList
                                      .map((e) => valueOrDefault<String>(
                                            e.itemGroupName,
                                            '-',
                                          ))
                                      .toList(),
                                  onChanged: (val) async {
                                    setState(() => _model.itmGrpDDValue = val);
                                    await PackageItemGroupTable().delete(
                                      matchingRows: (rows) => rows
                                          .eq(
                                            'FK_Item',
                                            widget.itemRow?.pKItems,
                                          )
                                          .eq(
                                            'FK_Package',
                                            widget.packageRow?.pKPackages,
                                          ),
                                    );
                                    await PackageItemGroupTable().insert({
                                      'FK_ItemGroup': _model.itmGrpDDValue,
                                      'FK_Item': widget.itemRow?.pKItems,
                                      'FK_Package':
                                          widget.packageRow?.pKPackages,
                                      'hide': false,
                                    });
                                    setState(
                                        () => _model.requestCompleter1 = null);
                                    await _model.waitForRequestCompleted1();
                                    setState(
                                        () => _model.requestCompleter2 = null);
                                    await _model.waitForRequestCompleted2();
                                    await widget.onItemDbChange?.call();

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
                                  labelText: 'Select Group or Course',
                                  labelTextStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
