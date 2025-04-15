import 'package:demo30/reuseable_widgets/footer.dart';
import 'package:demo30/reuseable_widgets/textfeild.dart';
import 'package:demo30/screens/home_screen.dart';
import 'package:demo30/utility/all_colors.dart';
import 'package:demo30/utility/all_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Container(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('sign up', style: AllStyles.titleStyle),
              Text(
                'Let’s save environment together',
                style: AllStyles.subtitleStyle,
              ),
              const SizedBox(height: 100),
              Textfeild(lebel: 'Email', hint: 'hh@gmail.com'),
              SizedBox(height: 15),
              Textfeild(lebel: 'password', hint: 'hh@gmail.com'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text('remember me'),
                    ],
                  ),
                  Text('forget password?'),
                ],
              ),

              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AllColors.primaryColor,

                  minimumSize: Size(400, 50),
                ),
                onPressed: () {
                  Get.to(HomeScreen());
                },
                child: Text('Sign up', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'or sign in with',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 50,
                  width: 200,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage('assets/google.png')),
                      Image(image: AssetImage('assets/facebook.png')),
                      Image(image: AssetImage('assets/microsoft.png')),
                      Image(image: AssetImage('assets/apple.png')),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  Text(
                    ' Sign Up',
                    style: TextStyle(
                      color: AllColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
