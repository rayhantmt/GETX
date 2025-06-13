import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/recources/colors/app_colors.dart';

class Utils {
  static toastMessege(String message) {
    Fluttertoast.showToast(msg: message, backgroundColor: AppColors.text,gravity: ToastGravity.BOTTOM);
  }
 static toastMessegetop(String message) {
    Fluttertoast.showToast(msg: message, backgroundColor: AppColors.text,gravity: ToastGravity.TOP);
  }
static snackbar(String title, String message){

  Get.snackbar(title, message,
  backgroundColor: AppColors.text,
  
  );
}

}
