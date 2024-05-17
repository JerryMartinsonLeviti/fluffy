import '/backend/supabase/supabase.dart';
import '/components/beverage_package_card/beverage_package_card_widget.dart';
import '/components/food_package_card/food_package_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'packages_component_model.dart';
export 'packages_component_model.dart';

class PackagesComponentWidget extends StatefulWidget {
  const PackagesComponentWidget({
    super.key,
    required this.packagesRows,
  });

  final List<PackagesRow>? packagesRows;

  @override
  State<PackagesComponentWidget> createState() =>
      _PackagesComponentWidgetState();
}

class _PackagesComponentWidgetState extends State<PackagesComponentWidget> {
  late PackagesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PackagesComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(130.0, 10.0, 0.0, 0.0),
                child: Text(
                  'Packages',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
              child: Container(
                width: 767.0,
                height: 3.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent3,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Food',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 20.0),
                child: Text(
                  'Please select up to two options',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Builder(
              builder: (context) {
                final packagesIdx = widget.packagesRows!.toList();
                return Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children:
                      List.generate(packagesIdx.length, (packagesIdxIndex) {
                    final packagesIdxItem = packagesIdx[packagesIdxIndex];
                    return FoodPackageCardWidget(
                      key: Key(
                          'Keyw2u_${packagesIdxIndex}_of_${packagesIdx.length}'),
                      packageRow: packagesIdxItem,
                    );
                  }),
                );
              },
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Beverage',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Please select one option',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(45.0, 15.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.beveragePackageCardModel1,
                    updateCallback: () => setState(() {}),
                    child: BeveragePackageCardWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(45.0, 15.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.beveragePackageCardModel2,
                    updateCallback: () => setState(() {}),
                    child: BeveragePackageCardWidget(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
