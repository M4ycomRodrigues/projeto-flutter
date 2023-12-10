import '../../widgets/my_util.dart';
import 'feed_page_widget.dart' show FeedPageWidget;
import 'package:flutter/material.dart';

class FeedPageModel extends FlutterFlowModel<FeedPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
