import 'package:flutter_ecommerce/common/routes/route_name.dart';

import 'package:flutter_ecommerce/pages/bag_page/BagPage.dart';
import 'package:flutter_ecommerce/pages/bag_page/bag_binding.dart';
import 'package:flutter_ecommerce/pages/home_page/home_binding.dart';
import 'package:flutter_ecommerce/pages/login_page/login.dart';
import 'package:flutter_ecommerce/pages/profile_page/ProfilePage.dart';
import 'package:flutter_ecommerce/pages/profile_page/profile_binding.dart';
import 'package:flutter_ecommerce/pages/register_page/signup.dart';
import 'package:flutter_ecommerce/pages/register_page/signup_binding.dart';
import 'package:flutter_ecommerce/pages/splash_screen/splash_binding.dart';
import 'package:flutter_ecommerce/pages/splash_screen/splash_screen.dart';
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
    name: RouteName.bag, 
    page: () => BagPage(), 
    binding: BagBinding()
    ),
    GetPage(
    name: RouteName.profile, 
    page: () => ProfilePage(), 
    binding: ProfileBinding()
    ),
    GetPage(
    name: RouteName.splash, 
    page: () => SplashScreen(), 
    binding: SplashBinding()
    ),
 
];