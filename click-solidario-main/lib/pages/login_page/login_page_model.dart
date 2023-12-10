import '../../widgets/my_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  // State field(s) for emailAddressNew widget.
  FocusNode? emailAddressNewFocusNode;
  TextEditingController? emailAddressNewController;
  String? Function(BuildContext, String?)? emailAddressNewControllerValidator;
  // State field(s) for passwordNew widget.
  FocusNode? passwordNewFocusNode;
  TextEditingController? passwordNewController;
  late bool passwordNewVisibility;
  String? Function(BuildContext, String?)? passwordNewControllerValidator;
  // State field(s) for passwordRepeat widget.
  FocusNode? passwordRepeatFocusNode;
  TextEditingController? passwordRepeatController;
  late bool passwordRepeatVisibility;
  String? Function(BuildContext, String?)? passwordRepeatControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordNewVisibility = false;
    passwordRepeatVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    userNameFocusNode?.dispose();
    userNameController?.dispose();

    emailAddressNewFocusNode?.dispose();
    emailAddressNewController?.dispose();

    passwordNewFocusNode?.dispose();
    passwordNewController?.dispose();

    passwordRepeatFocusNode?.dispose();
    passwordRepeatController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
