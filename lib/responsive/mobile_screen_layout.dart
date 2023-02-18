import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_app/screens/login_screen.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.blueAccent),
            ),
            onPressed: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (_) => const LoginScreen(),
              ),
            ),
            child: const Text('Mobile'),
          ),
        ),
      ),
    );
  }
}
