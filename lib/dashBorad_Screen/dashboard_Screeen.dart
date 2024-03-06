import 'package:dart_news_app/View/Gaming/Gaming%20Related.dart';
import 'package:dart_news_app/View/Home_Screen/Home_Screen.dart';
import 'package:dart_news_app/View/categories/category.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';



class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DashBoardScreen> {

 final  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const  HomeScreen(),
       CategoriesScreen(),
      const GamingScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon:const  Icon(Icons.home),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.black
      ),
      PersistentBottomNavBarItem(
          icon:const  Icon(Icons.discount_sharp),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.black
      ),
      PersistentBottomNavBarItem(
          icon:const  Icon(Icons.category_sharp),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.black
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PersistentTabView(
                context,
                controller: _controller,
                screens: _buildScreens(),
                items: _navBarsItems(),
                confineInSafeArea: true,
                backgroundColor: Colors.white, // Default is Colors.white.
                handleAndroidBackButtonPress: true, // Default is true.
                resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
                stateManagement: true, // Default is true.
                hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
                decoration: NavBarDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  colorBehindNavBar: Colors.white,
                ),
                popAllScreensOnTapOfSelectedTab: true,
                popActionScreens: PopActionScreensType.all,
                itemAnimationProperties:const  ItemAnimationProperties( // Navigation Bar's items animation properties.
                  duration: Duration(milliseconds: 200),
                  curve: Curves.ease,
                ),
                screenTransitionAnimation:const  ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
                  animateTabTransition: true,
                  curve: Curves.ease,
                  duration: Duration(milliseconds: 200),
                ),
                navBarStyle: NavBarStyle.style1,
              ),
    );


  }
}

