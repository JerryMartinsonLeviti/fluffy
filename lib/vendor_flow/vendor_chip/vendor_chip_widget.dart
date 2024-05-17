import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_chip_model.dart';
export 'vendor_chip_model.dart';

class VendorChipWidget extends StatefulWidget {
  const VendorChipWidget({
    super.key,
    required this.vendorRow,
  });

  final VendorsRow? vendorRow;

  @override
  State<VendorChipWidget> createState() => _VendorChipWidgetState();
}

class _VendorChipWidgetState extends State<VendorChipWidget> {
  late VendorChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorChipModel());

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
      decoration: BoxDecoration(),
      child: FutureBuilder<List<UserInfosRow>>(
        future: UserInfosTable().querySingleRow(
          queryFn: (q) => q.eq(
            'FK_Vendor',
            FFAppState().PKVendors,
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
          List<UserInfosRow> containerUserInfosRowList = snapshot.data!;
          final containerUserInfosRow = containerUserInfosRowList.isNotEmpty
              ? containerUserInfosRowList.first
              : null;
          return Container(
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: valueOrDefault<String>(
                      containerUserInfosRow?.firstName,
                      'noName',
                    ),
                    options: FFButtonOptions(
                      width: 190.0,
                      height: 43.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/59/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
