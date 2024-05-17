import '/components/icon_asset_folder/icon_asset_folder_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_side_bar_nav_component_model.dart';
export 'vendor_side_bar_nav_component_model.dart';

class VendorSideBarNavComponentWidget extends StatefulWidget {
  const VendorSideBarNavComponentWidget({super.key});

  @override
  State<VendorSideBarNavComponentWidget> createState() =>
      _VendorSideBarNavComponentWidgetState();
}

class _VendorSideBarNavComponentWidgetState
    extends State<VendorSideBarNavComponentWidget> {
  late VendorSideBarNavComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorSideBarNavComponentModel());

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
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          wrapWithModel(
            model: _model.iconAssetFolderModel,
            updateCallback: () => setState(() {}),
            child: IconAssetFolderWidget(),
          ),
          Text(
            'Assets',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 20.0)),
      ),
    );
  }
}
