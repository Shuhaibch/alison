// import 'dart:convert';
// import 'dart:developer';
// import 'package:alison/features/login/data/model/user_model.dart';
// import 'package:alison/features/login/domain/repository/user_repository.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPrefController {
//   Future<void> saveUserId(LoginRespModel token) async {
//     final prefs = await SharedPreferences.getInstance();
//     final tokenJson = jsonEncode(token.toJson());
//     await prefs.setString('token', tokenJson).then((value) {
//       SharedPrefController().getUserId();
//     }).onError((error, stackTrace) {
//       log(error.toString());
//     });
//   }

//   Future<LoginRespModel?> getUserId() async {
//     var tokenString;
//     final prefs = await SharedPreferences.getInstance();
//     if (prefs.containsKey('token')) {
//       tokenString = await jsonDecode(prefs.getString('token')!);
//     } else {
//       await AuthController().loginUser();
//     }
//     if (tokenString != null) {
//       try {
//         final loginUser = LoginRespModel.fromJson(tokenString);
//         log(loginUser.customerdata!.token!);
//         return loginUser;
//       } catch (e) {
//         log('Error decoding token: $e');
//         return null;
//       }
//     } else {
//       return null;
//     }
//   }

//   Future<void> clearToken() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.clear();
//   }

//   Future<bool> isLoggedIn() async {
//     final LoginRespModel? data = await getUserId();
//     if (data != null) {
//       return true;
//     }
//     return false;
//   }
// }
