import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class xController extends GetxController {
  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;
  final cfPassController = TextEditingController().obs;

  RxBool loading = false.obs;

  loginApi() async {
    loading.value = true;
    print('Name= ${nameController.value.text.toString()}');
    print('Job= ${emailController.value.text.toString()}');
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/users'), body: {
        "name": nameController.value.text.toString(),
        "job": emailController.value.text.toString(),
      });

      var data = jsonDecode(response.body);

      if (response.statusCode == 201) {
        loading.value = false;
        Get.snackbar('Login', 'Created successfully');
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
