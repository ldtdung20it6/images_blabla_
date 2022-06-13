import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async {
  final ImagePicker _imagepicker = ImagePicker();

  XFile? _file = await _imagepicker.pickImage(source: source);
  if(_file != null){
    return await _file.readAsBytes();
  }
  print('No images select');
}
pickVideo(ImageSource source) async {
  final ImagePicker _pickvideo = ImagePicker();

  XFile? _file = await _pickvideo.pickVideo(source: source);
  if(_file != null){
    return await _file.readAsBytes();
  }
  print('No video select');
}
// for displaying snackbars
showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
