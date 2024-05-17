import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/vendor_flow/vendor_chip/vendor_chip_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_main_dashboard_component/vendor_main_dashboard_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_side_bar_nav_component/vendor_side_bar_nav_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_side_bar_requests_to_book_component/vendor_side_bar_requests_to_book_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_financials_compoentn/vendor_sidebar_financials_compoentn_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_manage_event_component/vendor_sidebar_manage_event_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_nav_account_component/vendor_sidebar_nav_account_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_nav_communications_component/vendor_sidebar_nav_communications_component_widget.dart';
import '/vendor_flow/vendor_sidebar/vendor_sidebar_nav_schedules_component/vendor_sidebar_nav_schedules_component_widget.dart';
import 'vendor_side_nav_component_widget.dart'
    show VendorSideNavComponentWidget;
import 'package:flutter/material.dart';

class VendorSideNavComponentModel
    extends FlutterFlowModel<VendorSideNavComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Model for VendorChip component.
  late VendorChipModel vendorChipModel;
  // Model for VendorMainDashboardComponent component.
  late VendorMainDashboardComponentModel vendorMainDashboardComponentModel;
  // Model for VendorSidebarNavAssetsComponent.
  late VendorSideBarNavComponentModel vendorSidebarNavAssetsComponentModel;
  // Model for VendorSidebarNavSchedulesComponent component.
  late VendorSidebarNavSchedulesComponentModel
      vendorSidebarNavSchedulesComponentModel;
  // Model for VendorSidebarNavCommunicationsComponent component.
  late VendorSidebarNavCommunicationsComponentModel
      vendorSidebarNavCommunicationsComponentModel;
  // Model for VendorSidebarFinancialsCompoentn component.
  late VendorSidebarFinancialsCompoentnModel
      vendorSidebarFinancialsCompoentnModel;
  // Model for VendorSideBarRequestsToBookComponent component.
  late VendorSideBarRequestsToBookComponentModel
      vendorSideBarRequestsToBookComponentModel;
  // Model for VendorSidebarManageEventComponent component.
  late VendorSidebarManageEventComponentModel
      vendorSidebarManageEventComponentModel;
  // Model for VendorSidebarNavAccountComponent component.
  late VendorSidebarNavAccountComponentModel
      vendorSidebarNavAccountComponentModel;

  @override
  void initState(BuildContext context) {
    vendorChipModel = createModel(context, () => VendorChipModel());
    vendorMainDashboardComponentModel =
        createModel(context, () => VendorMainDashboardComponentModel());
    vendorSidebarNavAssetsComponentModel =
        createModel(context, () => VendorSideBarNavComponentModel());
    vendorSidebarNavSchedulesComponentModel =
        createModel(context, () => VendorSidebarNavSchedulesComponentModel());
    vendorSidebarNavCommunicationsComponentModel = createModel(
        context, () => VendorSidebarNavCommunicationsComponentModel());
    vendorSidebarFinancialsCompoentnModel =
        createModel(context, () => VendorSidebarFinancialsCompoentnModel());
    vendorSideBarRequestsToBookComponentModel =
        createModel(context, () => VendorSideBarRequestsToBookComponentModel());
    vendorSidebarManageEventComponentModel =
        createModel(context, () => VendorSidebarManageEventComponentModel());
    vendorSidebarNavAccountComponentModel =
        createModel(context, () => VendorSidebarNavAccountComponentModel());
  }

  @override
  void dispose() {
    vendorChipModel.dispose();
    vendorMainDashboardComponentModel.dispose();
    vendorSidebarNavAssetsComponentModel.dispose();
    vendorSidebarNavSchedulesComponentModel.dispose();
    vendorSidebarNavCommunicationsComponentModel.dispose();
    vendorSidebarFinancialsCompoentnModel.dispose();
    vendorSideBarRequestsToBookComponentModel.dispose();
    vendorSidebarManageEventComponentModel.dispose();
    vendorSidebarNavAccountComponentModel.dispose();
  }
}
