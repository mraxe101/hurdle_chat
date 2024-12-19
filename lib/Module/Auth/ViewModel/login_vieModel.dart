import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hurdle_chat/Module/Auth/Service/auth_service.dart';
import 'package:hurdle_chat/Module/Inbox/Inbox.dart';
import 'package:hurdle_chat/Utils/Loader.dart';
import 'package:hurdle_chat/common/customtoast.dart';

class LoginViewmodel extends GetxController with AuthService {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;

  // onlogin Method
  Future<void> onLogin(BuildContext context) async {
    try {
      if (emailController.value.text.isEmpty) {
        CustomtToast.error("Email is required");
        return;
      }
      if (passwordController.value.text.isEmpty) {
        CustomtToast.error("Password is required");
        return;
      }
      showLoadingIndicator(context: context);
      String userID = await loginUser(
        email: emailController.value.text,
        password: passwordController.value.text,
      );
      hideOpenDialog(context: context);
      if (userID.isNotEmpty) {
        Get.offAll(() => const Inbox());
      }
    } catch (e) {
      hideOpenDialog(context: context);
    }
  }
}
