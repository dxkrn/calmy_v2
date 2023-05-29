import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final usernameC = TextEditingController();
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final rePassC = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
