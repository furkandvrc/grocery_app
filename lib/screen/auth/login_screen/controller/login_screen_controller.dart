import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  BuildContext get context => scaffoldKey.currentContext!;
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> verifyPhoneNumber(String phoneNumber) async {
  verificationCompleted(AuthCredential phoneAuthCredential) {
    auth.signInWithCredential(phoneAuthCredential);
    print('Phone number verification completed');
  }

  verificationFailed(FirebaseAuthException authException) {
    print('Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
  }

  codeSent(String verificationId, [int? forceResendingToken]) async {
    print('Verification code sent to the phone number');
    
    // Once the user enters the OTP, call the signInWithPhoneNumber method
    String smsCode = ''; // replace this with the actual OTP entered by the user
    AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
    auth.signInWithCredential(phoneAuthCredential);
    print('Phone number verification completed');
  }

  codeAutoRetrievalTimeout(String verificationId) {
    print("Phone code auto retrieval timeout");
  }

  await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      timeout: const Duration(seconds: 60));
}
}
