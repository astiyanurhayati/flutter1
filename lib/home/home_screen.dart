import 'package:flutter/material.dart';
import 'package:news_app/profile/profile_screen.dart';
import 'package:news_app/login/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Center(
        child: Column(children: [
          Image.asset(
            'assets/images/welcome.jpg',
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Selamat datang, user",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Ini adalah halaman home tempat navigasi berawal")
        ]),
      ),
    ));
  }

  // void handleClick(BuildContext context, Object? value) {
  //   switch (value) {
  //     case 'logout':
  //       const snackBar = SnackBar(content: Text("Logout Berhasil!"));
  //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //       Navigator.of(context)
  //           .pushNamedAndRemoveUntil('login', (route) => false);
  //       break;
  //   }
  // }

}
