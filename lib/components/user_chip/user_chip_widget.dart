import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_chip_model.dart';
export 'user_chip_model.dart';

class UserChipWidget extends StatefulWidget {
  const UserChipWidget({
    super.key,
    this.imageURL,
    this.firstName,
    this.lastName,
    this.email,
  });

  final String? imageURL;
  final String? firstName;
  final String? lastName;
  final String? email;

  @override
  State<UserChipWidget> createState() => _UserChipWidgetState();
}

class _UserChipWidgetState extends State<UserChipWidget> {
  late UserChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserChipModel());

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
      width: 200.0,
      height: 80.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 36.0,
            height: 36.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent1,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.imageURL!,
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.firstName,
                          'lName',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        widget.lastName!,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 5.0)),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: Text(
                      widget.email!,
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
        ],
      ),
    );
  }
}
