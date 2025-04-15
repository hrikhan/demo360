import 'package:demo30/controllar/auth_controllar.dart';
import 'package:demo30/reuseable_widgets/footer.dart';
import 'package:demo30/reuseable_widgets/textfeild.dart';
import 'package:demo30/screens/home_screen.dart';
import 'package:demo30/screens/sign_up.dart';
import 'package:demo30/utility/all_colors.dart';
import 'package:demo30/utility/all_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
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
                  Text('Sign In', style: AllStyles.titleStyle),
                  Text(
                    'Let’s save environment together',
                    style: AllStyles.subtitleStyle,
                  ),
                  const SizedBox(height: 100),
                  Textfeild(
                    lebel: 'Email',
                    hint: 'hh@gmail.com',
                    controllar: email,
                  ),
                  SizedBox(height: 15),
                  Textfeild(
                    lebel: 'password',
                    hint: '123456',
                    controllar: pass,
                  ),
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
                      if (email.text.isNotEmpty && pass.text.isNotEmpty) {
                        AuthControllar().loginUser(email.text, pass.text).then((
                          success,
                        ) {
                          Get.offAll(HomeScreen());
                        });
                      } else {
                        Get.snackbar('fleid required', 'filled required');
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
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
                  SizedBox(height: 150),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(SignUp());
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(
                            color: AllColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
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
        ),
      ),
    );
  }
}
