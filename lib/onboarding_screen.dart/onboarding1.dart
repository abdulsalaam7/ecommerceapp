// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/onboarding_screen.dart/onboarding2.dart';
import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: const Color(0xff2A4Ba0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Your holiday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'shopping',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'delivered to screen',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.9,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'one',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "There's somethings for everyone",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "to enjoy with sweet Shop",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.5),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "Favourite Screen1",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.5),
                ),
                const SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 3,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 38,
                      height: 3,
                      color: Colors.white,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 48,
                    ),
                    Center(
                      child: Image.asset(
                        'images/fruitonboard.png',
                        width: 350,
                        height: 250,
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      width: 250,
                      height: 58,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 252, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const OnboardingScreen2(),
                          ));
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black, // Color of the text
                              ),
                            ),
                            SizedBox(width: 48),
                            Icon(
                              Icons.arrow_forward,
                              size: 24,
                              color: Colors.black, // Color of the icon
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
