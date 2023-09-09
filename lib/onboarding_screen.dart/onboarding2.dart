import 'package:ecommerce/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff2A4Ba0), // Set your desired background color here
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
                SizedBox(
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
                SizedBox(
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
                SizedBox(
                  height: 3,
                ),
                Text(
                  'two',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
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
                SizedBox(
                  height: 3,
                ),
                Text(
                  "to enjoy with sweet Shop",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Favourite Screen2",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    Container(
                      width: 38,
                      height: 3,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 24,
                      height: 3,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 48,
                    ),
                    Center(
                      child: Image.asset(
                        'images/vegeonboard.png',
                        width: 350,
                        height: 250,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Container(
                      width: 250,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 250, 252, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () async {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          prefs.setBool('first_launch', false);

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
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
