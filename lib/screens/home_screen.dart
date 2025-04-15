import 'package:demo30/reuseable_widgets/textfeild.dart';
import 'package:demo30/utility/all_colors.dart';
import 'package:demo30/utility/all_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Image(image: const AssetImage('assets/Line 13.png')),
                  const SizedBox(width: 10),
                  Image(image: const AssetImage('assets/home 1.png')),
                  const SizedBox(width: 10),
                  Text(
                    'Home',
                    style: AllStyles.titleStyle.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          AllColors.primaryColor,
                          AllColors.secondprimaryColor,
                          const Color.fromARGB(255, 166, 248, 175),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'good',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '652',
                    style: TextStyle(
                      color: AllColors.primaryColor,
                      fontSize: 48,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 35,
                      decoration: BoxDecoration(
                        color: AllColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '13%',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    Text(
                      'ppm',
                      style: TextStyle(color: AllColors.secondprimaryColor),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Image(image: AssetImage('assets/Polygon 3.png')),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 10,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          height: 10,
                          width: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 248, 233, 22),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          height: 10,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          height: 10,
                          width: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 70, 244, 54),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10),
            Row(children: [Text('History'), Spacer(), Text('see all>')]),
            SizedBox(height: 10),
            Image(image: AssetImage('assets/History Graph.png')),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 161,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Text(
                          'person',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Image(image: AssetImage('assets/Group 15.png')),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 161,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Plant',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AllColors.primaryColor,
                          ),
                        ),
                        Image(image: AssetImage('assets/image 3 (1).png')),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 150,
                  width: 161,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AllColors.primaryColor,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '43',
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
