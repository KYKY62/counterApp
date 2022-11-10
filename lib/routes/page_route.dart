import 'package:counter_app/GetX/counter_with_getx.dart';
import 'package:counter_app/StateFull/counter.dart';
import 'package:counter_app/main.dart';
import 'package:counter_app/routes/route_name.dart';
import 'package:get/get.dart';

class AppPage {
  static var pageName = [
    GetPage(name: RouteName.home, page: () => const HomePage()),
    GetPage(name: RouteName.counter, page: () => const Counter()),
    GetPage(name: RouteName.counterGetX, page: () => CounterWithGetx()),
  ];
}
