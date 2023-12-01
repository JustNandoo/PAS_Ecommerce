import 'package:flutter_ecommerce/common/components/toast_message.dart';
import 'package:flutter_ecommerce/common/model/signup_response_model.dart';
import 'package:flutter_ecommerce/common/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignupController extends GetxController {
  RxBool isLoading = false.obs;
  RxString message = "".obs;

  void SignUpAction(String username, String email, String password,
      String confirmPassword) async {
    print("REGISTER..."); 
    try {
      isLoading.value = true;
      if (username.isEmpty ||
          email.isEmpty ||
          password.isEmpty ||
          confirmPassword.isEmpty) {
        message.value = "Fields cannot be empty";

        isLoading.value = false;
        ToastMessage.show(message.value);
        return;
      }
      if (password != confirmPassword) {
        message.value = "Password and confirmation password do not match";

        isLoading.value = false;
        ToastMessage.show(message.value);
        return;
      }

      final url = Uri.parse("https://mediadwi.com/api/latihan/register-user");
      final headers = {
        "Content-Type": "application/x-www-form-urlencoded",
      };
      final body = {
        "username": username,
        "full_name": username,
        "email": email,
        "password": password
      };

      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        final responseData = signupResponseModelFromJson(response.body);
        message.value = responseData.message;

        isLoading.value = false;
        ToastMessage.show(message.value);
        if (responseData.status) Get.off(RouteName.login);
      } else {
        print("status code: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
  }
}
