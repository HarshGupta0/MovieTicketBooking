import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieticket/view/Cinemas.dart';
import 'package:movieticket/view/coming_soon.dart';
import 'package:movieticket/view/home.dart';
import 'package:movieticket/view/more.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 60,
            elevation: 20,
            selectedIndex: controller.selectIndex.value,
            onDestinationSelected: (index)=>controller.selectIndex.value=index,

            destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(
              icon: Icon(Icons.movie_filter_outlined), label: 'Cinemas'),
          NavigationDestination(icon: Icon(Icons.upcoming), label: 'More'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorite'),
        ]),
      ),
      body: Obx(() => controller.screens[controller.selectIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectIndex = 0.obs;
  final screens = [
    Home(),
    Cinemas(),
    ComingSoon(),
    more(),
  ];
}
