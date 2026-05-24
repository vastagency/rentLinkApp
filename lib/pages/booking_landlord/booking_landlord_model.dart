import '/components/bottom_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'booking_landlord_widget.dart' show BookingLandlordWidget;
import 'package:flutter/material.dart';

class BookingLandlordModel extends FlutterFlowModel<BookingLandlordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    bottomNavModel.dispose();
  }
}
