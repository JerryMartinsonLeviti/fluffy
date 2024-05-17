import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendor_flow/vendor_offering/product_detail_config_widget/product_detail_config_widget_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_entry_row_model.dart';
export 'product_entry_row_model.dart';

class ProductEntryRowWidget extends StatefulWidget {
  const ProductEntryRowWidget({super.key});

  @override
  State<ProductEntryRowWidget> createState() => _ProductEntryRowWidgetState();
}

class _ProductEntryRowWidgetState extends State<ProductEntryRowWidget> {
  late ProductEntryRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductEntryRowModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Color(0x00000000),
              child: ExpandableNotifier(
                controller: _model.expandableExpandableController,
                child: ExpandablePanel(
                  header: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: FaIcon(
                                FontAwesomeIcons.angleDown,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Icon(
                                  Icons.question_mark,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Text(
                                        'Chef\'s Table Package',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 50.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Package',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 50.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '\$30',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    'per Guest',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Icon(
                                  Icons.add,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  collapsed: Container(
                    width: 0.0,
                    height: 0.0,
                    decoration: BoxDecoration(),
                  ),
                  expanded: wrapWithModel(
                    model: _model.productDetailConfigWidgetModel,
                    updateCallback: () => setState(() {}),
                    child: ProductDetailConfigWidgetWidget(),
                  ),
                  theme: ExpandableThemeData(
                    tapHeaderToExpand: true,
                    tapBodyToExpand: false,
                    tapBodyToCollapse: false,
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    hasIcon: true,
                    expandIcon: Icons.arrow_right,
                    collapseIcon: Icons.arrow_drop_down,
                    iconColor: FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
