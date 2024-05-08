import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/routes/App_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../data/user_model/user_model.dart';

class SignupController extends GetxController {
  var isNameValid = false.obs;
  var isEmailValid = false.obs;
  var isPasswordValid = false.obs;
  RxBool obsecure = true.obs;



  void validateName(String value) {
    isNameValid.value = value.isNotEmpty;
  }

  void validateEmail(String value) {
    isEmailValid.value = value.contains('@gmail.com');
  }

  void validatePassword(String value) {
    isPasswordValid.value = value.length >= 7 &&
        value.contains(RegExp(r'[a-z]')) &&
        value.contains(RegExp(r'[A-Z]'));
  }

  void togglePasswordVisibility() {
    obsecure.value = !obsecure.value;
  }

  final password = ''.obs;

  String? ValidatePassword(String value) {
    if (value.length < 7) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }
  final formKey = GlobalKey<FormState>();

  //firebase
  final auth = FirebaseAuth.instance;

  //editting controllers
  final userNameController = new TextEditingController();
  final emailAddressController = new TextEditingController();
 // final residentialAddressController = new TextEditingController();
  //final phoneNumberController = new TextEditingController();
  final passwordController = new TextEditingController();
  final confirmPasswordController = new TextEditingController();

  void signUp(String email, String password) async {
    if (formKey.currentState!.validate()) {
      print('object');
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
        Fluttertoast.showToast(msg: "Signin  Successfull"),
        Get.toNamed(AppRoutes.Bottomnav),
      })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }


  postDetailToFirestore() async {

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = auth.currentUser;

    UserModel userModel = UserModel();

    //writting all the values
    userModel.emailAddress = user!.email;
    userModel.uid = user.uid;
    userModel.userName = userNameController.text;
    userModel.password = passwordController.text;

    //creating new collection in firestore
    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account Created Successfully !");

   Get.toNamed(AppRoutes.Bottomnav);
  }
}}
