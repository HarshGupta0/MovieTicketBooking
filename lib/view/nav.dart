import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieticket/view/Cinemas.dart';
import 'package:movieticket/view/FavoriteScreen.dart';
import 'package:movieticket/view/Theaters.dart';
import 'package:movieticket/view/home.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return SafeArea(child:Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green.shade600, Colors.black26])),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
      bottomNavigationBar: Obx(
            () => NavigationBar(
                indicatorColor: Colors.green.shade400,
                surfaceTintColor: Colors.cyan,
                backgroundColor: Color(0xff618264).withOpacity(.9),
            // animationDuration
                // : Duration(milliseconds: 900),
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            height: 55,
            elevation: 0,
            selectedIndex: controller.selectIndex.value,
            onDestinationSelected: (index)=>controller.selectIndex.value=index,
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home,color: Colors.white),
                label: 'Home',
                selectedIcon:Icon(Icons.home,color: Colors.white,size: 30,),

              ),
              NavigationDestination(icon: Icon(Icons.movie_filter_outlined,color: Colors.white,), label: 'Cinemas'),
              NavigationDestination(icon: Icon(Icons.upcoming,color: Colors.white,), label: 'More'),
              NavigationDestination(icon: Icon(Icons.favorite,color: Colors.white,), label: 'Favorite'),
            ],
            ),
      ),
      body: Obx(() => controller.screens[controller.selectIndex.value]),
    ),));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectIndex = 0.obs;
  final screens = [
    Home(),
    Cinemas(),
    Theaters(),
    FavScreen(),
  ];
}
