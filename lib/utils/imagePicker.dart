import 'package:lottery_winning/export.dart';

//图片选择器

enum AppState {
  free,
  picked,
  cropped,
}

class PickerImage {
  File image;

  getImage({onCallBack}) async {
    try {
      image = await ImagePicker.pickImage(
          source: ImageSource.gallery, maxHeight: 2000, maxWidth: 2000);
      onCallBack(image.path.toString());
    } catch (e) {
      printUtil.print(e);
    }
  }

  Future<Null> _cropImage() async {
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
      ratioX: 1.0,
      ratioY: 1.0,
      maxWidth: 512,
      maxHeight: 512,
    );
  }
}
