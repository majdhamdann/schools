import 'package:get/get.dart';
import 'package:untitled3/moduls/marks/markserver.dart';

class Markcontroller extends GetxController{
   var marks = {}.obs;
   var isVisibleMap = {}.obs;

   Markserver marksService=Markserver();

  @override
  void onInit() {
    fetchMarks();
    super.onInit();
  }

  void toggleVisibility(String subject) {
    isVisibleMap[subject] = !(isVisibleMap[subject] ?? false);
  }

  void fetchMarks() async {
  //  marks.value = await marksService.get_dayinweek();
    marks.keys.forEach((subject) {
      isVisibleMap[subject] = false;
    });
  }
}