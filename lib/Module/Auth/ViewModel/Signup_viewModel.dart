import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hurdle_chat/Module/Auth/Service/auth_service.dart';
import 'package:hurdle_chat/Module/Auth/view/Profile.dart';
import 'package:hurdle_chat/Utils/Loader.dart';
import 'package:hurdle_chat/common/customtoast.dart';

class SingupViewModel extends GetxController with AuthService {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> confirmPasswordController =
      TextEditingController().obs;

  Future<void> onRegisterUser(BuildContext context) async {
    try {
      if (emailController.value.text.isEmpty) {
        CustomtToast.error("Email is required");
        return;
      }
      if (passwordController.value.text !=
          confirmPasswordController.value.text) {
        CustomtToast.error("Password and Confirm Password does not match");
        return;
      }
      showLoadingIndicator(context: context);
      String userID = await registerUser(
        email: emailController.value.text,
        password: passwordController.value.text,
      );
      print("userID1111 $userID");
      hideOpenDialog(context: context);
      if (userID.isNotEmpty) {
        Get.to(() => Profile(userID: userID));
      }
    } catch (e) {
      hideOpenDialog(context: context);
      print(e.toString());
    }
  }
}
