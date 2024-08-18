import 'package:get/get.dart';

class HomeElevatedBottomController extends GetxController {
  int selectItem = 0;

  selectCategory(int index) {
    selectItem = index;
    update();
  }
}
