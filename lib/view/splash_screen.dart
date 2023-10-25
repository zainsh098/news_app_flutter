import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app_flutter/constants/font_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/newssplash.jpeg',
              fit: BoxFit.cover,

              height: height * 0.5,
            ),

            SizedBox(height: height *0.04,),
            Text(
              'TOP HEADLINES',
              style: TextStyle(
                fontFamily: FontStyles.CarosSoftExtraBold,
               letterSpacing: .6,
                fontSize: height * 0.03,


                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(height: height *0.04,),

            SpinKitChasingDots(
              color: Colors.blue,
              size: 40,

            ),

          ],
        ),
      ),

    );
  }
}
