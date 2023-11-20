import 'package:flutter_ecommerce/Pages/bag_page/BagPage.dart';
import 'package:flutter_ecommerce/Pages/bag_page/bag_binding.dart';
import 'package:flutter_ecommerce/Pages/home_page/HomePage.dart';
import 'package:flutter_ecommerce/Pages/home_page/home_binding.dart';
import 'package:flutter_ecommerce/routes/route_name.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage> route = [
  GetPage(name: RouteName.home, page: () => HomePage(), binding: HomeBinding()),
  GetPage(name: RouteName.bag, page: () => BagPage(), binding: BagBinding()),
];
