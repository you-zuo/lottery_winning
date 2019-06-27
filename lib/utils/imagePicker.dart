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
}
