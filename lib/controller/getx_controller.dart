import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class xController extends GetxController {
  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;
  final cfPassController = TextEditingController().obs;

  RxBool loading = false.obs;

  loginApi() async {
    loading.value = true;
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/users'), body: {
        "name": nameController.value.text.toString(),
        "email": emailController.value.text.toString(),
        "password": passController.value.text.toString()
      });

      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login', 'login successfully');
      } else {
        loading.value = false;
        Get.snackbar('Login', data['error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Error', e.toString());
    }
  }
}
