import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pkg_item_grp_config_component_model.dart';
export 'pkg_item_grp_config_component_model.dart';

class PkgItemGrpConfigComponentWidget extends StatefulWidget {
  const PkgItemGrpConfigComponentWidget({
    super.key,
    required this.onPkgItemGrpDbChange,
    required this.pkgiIemGrpRow,
    required this.packageRow,
  });

  final Future Function()? onPkgItemGrpDbChange;
  final PackageItemGroupRow? pkgiIemGrpRow;
  final PackagesRow? packageRow;

  @override
  State<PkgItemGrpConfigComponentWidget> createState() =>
      _PkgItemGrpConfigComponentWidgetState();
}

class _PkgItemGrpConfigComponentWidgetState
    extends State<PkgItemGrpConfigComponentWidget> {
  late PkgItemGrpConfigComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PkgItemGrpConfigComponentModel());

    _model.itemGrpNameTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.pkgiIemGrpRow?.pigName,
      '-',
    ));
    _model.itemGrpNameFocusNode ??= FocusNode();

    _model.minSelTextController ??= TextEditingController(
        text: widget.pkgiIemGrpRow?.pigMinSelect?.toString());
    _model.minSelFocusNode ??= FocusNode();

    _model.maxSelTextController ??= TextEditingController(
        text: widget.pkgiIemGrpRow?.pigMinSelect?.toString());
    _model.maxSelFocusNode ??= FocusNode();

    _model.itemGrpDescriptonTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.pkgiIemGrpRow?.pigDesc,
      '-',
    ));
    _model.itemGrpDescriptonFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  await PackageItemGroupTable().delete(
                    matchingRows: (rows) => rows.eq(
                      'PK_PackageItemGroups',
                      widget.pkgiIemGrpRow?.pKPackageItemGroups,
                    ),
                  );
                  await widget.onPkgItemGrpDbChange?.call();
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
                  if (!valueOrDefault<bool>(
                    widget.pkgiIemGrpRow?.hide,
                    false,
                  ))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await PackageItemGroupTable().update(
                          data: {
                            'hide': true,
                          },
                          matchingRows: (rows) => rows.eq(
                            'PK_PackageItemGroups',
                            widget.pkgiIemGrpRow?.pKPackageItemGroups,
                          ),
                        );

                        setState(() {});
                        await widget.onPkgItemGrpDbChange?.call();
                      },
                      child: Icon(
                        Icons.check_box_outline_blank,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  if (valueOrDefault<bool>(
                    widget.pkgiIemGrpRow?.hide,
                    false,
                  ))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await PackageItemGroupTable().update(
                          data: {
                            'hide': false,
                          },
                          matchingRows: (rows) => rows.eq(
                            'PK_PackageItemGroups',
                            widget.pkgiIemGrpRow?.pKPackageItemGroups,
                          ),
                        );

                        setState(() {});
                        await widget.onPkgItemGrpDbChange?.call();
                      },
                      child: Icon(
                        Icons.check_box,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                ],
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
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.itemGrpNameTextController,
                    focusNode: _model.itemGrpNameFocusNode,
                    onFieldSubmitted: (_) async {
                      await PackageItemGroupTable().update(
                        data: {
                          'pig_name': _model.itemGrpNameTextController.text,
                        },
                        matchingRows: (rows) => rows.eq(
                          'PK_PackageItemGroups',
                          widget.pkgiIemGrpRow?.pKPackageItemGroups,
                        ),
                      );
                      await widget.onPkgItemGrpDbChange?.call();
                    },
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'PkgItemGrpName (Course for this Package)',
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
                    validator: _model.itemGrpNameTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Container(
                width: 350.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.minSelTextController,
                        focusNode: _model.minSelFocusNode,
                        onFieldSubmitted: (_) async {
                          await PackageItemGroupTable().update(
                            data: {
                              'pig_min_select': int.tryParse(
                                  _model.minSelTextController.text),
                            },
                            matchingRows: (rows) => rows.eq(
                              'PK_PackageItemGroups',
                              widget.pkgiIemGrpRow?.pKPackageItemGroups,
                            ),
                          );
                          await widget.onPkgItemGrpDbChange?.call();
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'minSel',
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
                        validator: _model.minSelTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.maxSelTextController,
                        focusNode: _model.maxSelFocusNode,
                        onFieldSubmitted: (_) async {
                          await PackageItemGroupTable().update(
                            data: {
                              'pig_max_select': int.tryParse(
                                  _model.maxSelTextController.text),
                            },
                            matchingRows: (rows) => rows.eq(
                              'PK_PackageItemGroups',
                              widget.pkgiIemGrpRow?.pKPackageItemGroups,
                            ),
                          );
                          await widget.onPkgItemGrpDbChange?.call();
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'maxSel',
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
                        validator: _model.maxSelTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.itemGrpDescriptonTextController,
                        focusNode: _model.itemGrpDescriptonFocusNode,
                        onFieldSubmitted: (_) async {
                          await PackageItemGroupTable().update(
                            data: {
                              'pig_desc':
                                  _model.itemGrpDescriptonTextController.text,
                            },
                            matchingRows: (rows) => rows.eq(
                              'PK_PackageItemGroups',
                              widget.pkgiIemGrpRow?.pKPackageItemGroups,
                            ),
                          );
                          await widget.onPkgItemGrpDbChange?.call();
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Package ItemGroup/Course Description',
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
                        validator: _model
                            .itemGrpDescriptonTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
