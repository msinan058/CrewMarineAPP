// ignore_for_file: file_names

import 'package:get/get.dart';

class TAbController extends GetxController {
  var index = 1.obs;

  selectTab(int tabIndex) {
    index.value = tabIndex;
  }
}
