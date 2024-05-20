import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'image_gallery_manager_component_model.dart';
export 'image_gallery_manager_component_model.dart';

class ImageGalleryManagerComponentWidget extends StatefulWidget {
  const ImageGalleryManagerComponentWidget({
    super.key,
    required this.onUpload,
    required this.immageAssetRows,
    required this.onDbUpdate,
  });

  final Future Function(String? originalURL, String? newURL)? onUpload;
  final List<ImageAssetsRow>? immageAssetRows;
  final Future Function()? onDbUpdate;

  @override
  State<ImageGalleryManagerComponentWidget> createState() =>
      _ImageGalleryManagerComponentWidgetState();
}

class _ImageGalleryManagerComponentWidgetState
    extends State<ImageGalleryManagerComponentWidget> {
  late ImageGalleryManagerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageGalleryManagerComponentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onFieldSubmitted: (_) async {
                            _model.outputURL =
                                await actions.loadImageToSupabase(
                              _model.textController.text,
                            );
                            await widget.onUpload?.call(
                              _model.textController.text,
                              _model.outputURL,
                            );

                            setState(() {});
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'newImageURL',
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
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.plus_one,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
                Builder(
                  builder: (context) {
                    final imageAsset = widget.immageAssetRows!.toList();
                    return ReorderableListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: imageAsset.length,
                      itemBuilder: (context, imageAssetIndex) {
                        final imageAssetItem = imageAsset[imageAssetIndex];
                        return Container(
                          key: ValueKey("ListView_aaxrhaze" +
                              '_' +
                              imageAssetIndex.toString()),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.arrow_upward,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      Icon(
                                        Icons.arrow_downward,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (imageAssetItem.hide)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await ImageAssetsTable().update(
                                              data: {
                                                'hide': false,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'PK_ImageAssets',
                                                imageAssetItem.pKImageAssets,
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.visibility_off,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      if (!imageAssetItem.hide)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await ImageAssetsTable().update(
                                              data: {
                                                'hide': true,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'PK_ImageAssets',
                                                imageAssetItem.pKImageAssets,
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.visibility_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                    ],
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await ImageAssetsTable().delete(
                                        matchingRows: (rows) => rows.eq(
                                          'PK_ImageAssets',
                                          imageAssetItem.pKImageAssets,
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.delete_forever_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  imageAssetItem.imageUrl,
                                  width: 380.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      onReorder: (int reorderableOldIndex,
                          int reorderableNewIndex) async {},
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
