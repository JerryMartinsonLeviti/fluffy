import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_grp_config_component_model.dart';
export 'item_grp_config_component_model.dart';

class ItemGrpConfigComponentWidget extends StatefulWidget {
  const ItemGrpConfigComponentWidget({
    super.key,
    required this.onItemGrpDbChange,
    required this.itemGrpRow,
    required this.packageRow,
  });

  final Future Function()? onItemGrpDbChange;
  final ItemGroupsRow? itemGrpRow;
  final PackagesRow? packageRow;

  @override
  State<ItemGrpConfigComponentWidget> createState() =>
      _ItemGrpConfigComponentWidgetState();
}

class _ItemGrpConfigComponentWidgetState
    extends State<ItemGrpConfigComponentWidget> {
  late ItemGrpConfigComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemGrpConfigComponentModel());

    _model.itemGrpNameTextController ??=
        TextEditingController(text: widget.itemGrpRow?.itemGroupName);
    _model.itemGrpNameFocusNode ??= FocusNode();

    _model.minSelTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.itemGrpRow?.minSelections?.toString(),
      '-',
    ));
    _model.minSelFocusNode ??= FocusNode();

    _model.maxSelTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.itemGrpRow?.maxSelections?.toString(),
      '-',
    ));
    _model.maxSelFocusNode ??= FocusNode();

    _model.itemGrpDescriptonTextController ??=
        TextEditingController(text: widget.itemGrpRow?.itemGroupDescription);
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
                  await ItemGroupsTable().delete(
                    matchingRows: (rows) => rows.eq(
                      'PK_ItemGroups',
                      widget.itemGrpRow?.pKItemGroups,
                    ),
                  );
                  await widget.onItemGrpDbChange?.call();
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
                    widget.itemGrpRow?.hide,
                    false,
                  ))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await ItemGroupsTable().update(
                          data: {
                            'hide': true,
                          },
                          matchingRows: (rows) => rows.eq(
                            'PK_ItemGroups',
                            widget.itemGrpRow?.pKItemGroups,
                          ),
                        );

                        setState(() {});
                        await widget.onItemGrpDbChange?.call();
                      },
                      child: Icon(
                        Icons.check_box_outline_blank,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  if (valueOrDefault<bool>(
                    widget.itemGrpRow?.hide,
                    false,
                  ))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await ItemGroupsTable().update(
                          data: {
                            'hide': false,
                          },
                          matchingRows: (rows) => rows.eq(
                            'PK_ItemGroups',
                            widget.itemGrpRow?.pKItemGroups,
                          ),
                        );

                        setState(() {});
                        await widget.onItemGrpDbChange?.call();
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
                      await ItemGroupsTable().update(
                        data: {
                          'item_group_name':
                              _model.itemGrpNameTextController.text,
                        },
                        matchingRows: (rows) => rows.eq(
                          'PK_ItemGroups',
                          widget.itemGrpRow?.pKItemGroups,
                        ),
                      );
                      await widget.onItemGrpDbChange?.call();
                    },
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'ItemGrpName',
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
                          await ItemGroupsTable().update(
                            data: {
                              'minSelections': int.tryParse(
                                  _model.minSelTextController.text),
                            },
                            matchingRows: (rows) => rows.eq(
                              'PK_ItemGroups',
                              widget.itemGrpRow?.pKItemGroups,
                            ),
                          );
                          await widget.onItemGrpDbChange?.call();
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'minSel\n',
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
                          await ItemGroupsTable().update(
                            data: {
                              'maxSelections': int.tryParse(
                                  _model.maxSelTextController.text),
                            },
                            matchingRows: (rows) => rows.eq(
                              'PK_ItemGroups',
                              widget.itemGrpRow?.pKItemGroups,
                            ),
                          );
                          await widget.onItemGrpDbChange?.call();
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'maxSel\n',
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
                          await ItemGroupsTable().update(
                            data: {
                              'item_group_description':
                                  _model.itemGrpDescriptonTextController.text,
                            },
                            matchingRows: (rows) => rows.eq(
                              'PK_ItemGroups',
                              widget.itemGrpRow?.pKItemGroups,
                            ),
                          );
                          await widget.onItemGrpDbChange?.call();
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Item Group Description',
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
