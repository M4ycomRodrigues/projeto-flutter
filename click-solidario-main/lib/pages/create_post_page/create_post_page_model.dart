import '../../widgets/my_util.dart';
import 'create_post_page_widget.dart' show CreatePostPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CreatePostPageModel extends FlutterFlowModel<CreatePostPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // State field(s) for tituloNewPost widget.
  FocusNode? tituloNewPostFocusNode;
  TextEditingController? tituloNewPostController;
  String? Function(BuildContext, String?)? tituloNewPostControllerValidator;
  // State field(s) for conteudoNewPost widget.
  FocusNode? conteudoNewPostFocusNode;
  TextEditingController? conteudoNewPostController;
  String? Function(BuildContext, String?)? conteudoNewPostControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tituloNewPostFocusNode?.dispose();
    tituloNewPostController?.dispose();

    conteudoNewPostFocusNode?.dispose();
    conteudoNewPostController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
