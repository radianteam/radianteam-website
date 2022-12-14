import 'package:get/get.dart';

class MainMenuController extends GetxController {
  static MainMenuController instance = Get.find();

  var activeItem = "".obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHover(String itemName) => hoverItem.value == itemName;
}
