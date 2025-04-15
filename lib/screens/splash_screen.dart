import 'package:demo30/screens/login.dart';
import 'package:demo30/utility/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init();
  }

  void _init() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(Login());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Image.asset(
              'assets/app_icon 1.png',
              height: 200,
              width: 200,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'powered by',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  ' M360 ICT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AllColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
