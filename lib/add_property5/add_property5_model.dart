import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_property5_widget.dart' show AddProperty5Widget;
import 'package:flutter/material.dart';

class AddProperty5Model extends FlutterFlowModel<AddProperty5Widget> {
  ///  Local state fields for this page.

  List<String> uploadedPhotos = [];
  void addToUploadedPhotos(String item) => uploadedPhotos.add(item);
  void removeFromUploadedPhotos(String item) => uploadedPhotos.remove(item);
  void removeAtIndexFromUploadedPhotos(int index) =>
      uploadedPhotos.removeAt(index);
  void insertAtIndexInUploadedPhotos(int index, String item) =>
      uploadedPhotos.insert(index, item);
  void updateUploadedPhotosAtIndex(int index, Function(String) updateFn) =>
      uploadedPhotos[index] = updateFn(uploadedPhotos[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_photoUrl = false;
  List<FFUploadedFile> uploadedLocalFiles_photoUrl = [];
  List<String> uploadedFileUrls_photoUrl = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
