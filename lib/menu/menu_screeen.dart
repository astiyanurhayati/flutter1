import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/news/news_screen.dart';
import 'package:news_app/profile/profile_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  var listWidget = [
    const HomeScreen(),
    const NewsScreen(),
    const ProfileScreen()
  ];
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    final listPopMenu = {'logout'};
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              // PopupMenuItem<int>(
              //   value: 0,
              //   child: Text("Profile"),
              // ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('Logout'),
              )
            ],
          )
        ],
      ),
      body: listWidget[navIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            navIndex = index;
          });
        },
        currentIndex: navIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      // case 0:
      //   Navigator.of(context).push(
      //     MaterialPageRoute(builder: (context) => ProfileScreen()),
      //   );
      //   break;
      case 1:
        const snackBar = SnackBar(content: Text("berhasil logout!"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.of(context)
            .pushNamedAndRemoveUntil('login', (route) => false);
        break;
    }
  }
}
