import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
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
    return FutureBuilder<List<PackageItemRow>>(
      future: (_model.requestCompleter ??= Completer<List<PackageItemRow>>()
            ..complete(PackageItemTable().querySingleRow(
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
        List<PackageItemRow> containerPackageItemRowList = snapshot.data!;
        final containerPackageItemRow = containerPackageItemRowList.isNotEmpty
            ? containerPackageItemRowList.first
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
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
                  if (containerPackageItemRow?.pKPackageItem != null)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await PackageItemTable().delete(
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
                        setState(() => _model.requestCompleter = null);
                        await _model.waitForRequestCompleted();
                        setState(() {});
                        await widget.onItemDbChange?.call();
                      },
                      child: Icon(
                        Icons.check_box,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  if (containerPackageItemRow?.pKPackageItem == null)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await PackageItemTable().insert({
                          'FK_Package': widget.packageRow?.pKPackages,
                          'FK_Item': widget.itemRow?.pKItems,
                        });
                        setState(() => _model.requestCompleter = null);
                        await _model.waitForRequestCompleted();
                        setState(() {});
                        await widget.onItemDbChange?.call();
                      },
                      child: Icon(
                        Icons.check_box_outline_blank,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
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
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
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
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        validator: _model.itemDescriptonTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
