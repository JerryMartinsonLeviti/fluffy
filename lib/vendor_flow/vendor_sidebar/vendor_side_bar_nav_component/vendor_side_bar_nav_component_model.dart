import '/components/icon_asset_folder/icon_asset_folder_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_side_bar_nav_component_widget.dart'
    show VendorSideBarNavComponentWidget;
import 'package:flutter/material.dart';

class VendorSideBarNavComponentModel
    extends FlutterFlowModel<VendorSideBarNavComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconAssetFolder component.
  late IconAssetFolderModel iconAssetFolderModel;

  @override
  void initState(BuildContext context) {
    iconAssetFolderModel = createModel(context, () => IconAssetFolderModel());
  }

  @override
  void dispose() {
    iconAssetFolderModel.dispose();
  }
}
