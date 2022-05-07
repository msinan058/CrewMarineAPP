import 'package:flutter_application_1/Pages/CrewDetailPage.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

List<GetPage> appRoutes() => [
      GetPage(
        name: '/',
        page: () => const MyHomePage(title: 'Digital Ocean'),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/CrewDetailPage',
        page: () => const CrewDetailPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];
