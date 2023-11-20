import 'package:flutter_ecommerce/common/routes/route_name.dart';
import 'package:flutter_ecommerce/homedummy.dart';
import 'package:flutter_ecommerce/pages/login_page/login.dart';
import 'package:flutter_ecommerce/pages/register_page/signup.dart';
import 'package:flutter_ecommerce/pages/register_page/signup_binding.dart';
import 'package:get/get.dart';
import '../../pages/login_page/login_binding.dart';

List<GetPage> pageRoutes = [
  GetPage(
    name: RouteName.login,
    page: () => LoginPage(),
    binding: LoginBinding()
  ),
   GetPage(
    name: RouteName.signup,
    page: () => SignUpPage(),
    binding: SignUpBinding()
  ),
 
  GetPage(
    name: RouteName.home,
    page: () => HomePage(),
    
  ),
];