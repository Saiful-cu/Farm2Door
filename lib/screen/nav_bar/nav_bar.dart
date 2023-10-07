import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:farm2door/screen/nav_bar/cart/cart_page.dart';
import 'package:farm2door/screen/nav_bar/home_page.dart';
import 'package:farm2door/screen/nav_bar/message_page.dart';
import 'package:farm2door/screen/nav_bar/order_page.dart';
import 'package:farm2door/screen/nav_bar/profile_page.dart';
import 'package:flutter/material.dart';
class NavBarScreen extends StatefulWidget {
   const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  List<TabItem> items = [
  const TabItem(
    icon: Icons.home,
    title: 'Home',
  ),
  const TabItem(
    icon: Icons.place_rounded,
    title: 'Order',
  ),
  const TabItem(
    icon: Icons.message,
    title: 'Message',
  ),
  const TabItem(
    icon: Icons.shopping_cart_outlined,
    title: 'Cart',
  ),
  const TabItem(
    icon: Icons.account_box,
    title: 'profile',
  ),
];
List<Widget> pages = [const HomePage(), const OrderPage() ,const MessagePage(), const CartPage(), const ProfilePage()];
int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarFloating(
       items: items,
          backgroundColor: Colors.white,
          bottom: 10,
          color: Colors.black,
          colorSelected: Colors.green,
          titleStyle: const TextStyle(color: Colors.red),
          indexSelected: currentIndex,
          onTap: (i){
           setState(() {
              currentIndex = i;
           });
          },
      ),
      body: pages[currentIndex],
    );
  }
}