import 'package:lottery_winning/export.dart';

//图片选择器
class PickerImage {
  getImage({onCallBack}) async {
    try {
      var image = await ImagePicker.pickImage(
          source: ImageSource.gallery, maxHeight: 2000, maxWidth: 2000);
      onCallBack(image);
    } catch (e) {
      printUtil.print(e);
    }
  }
}
