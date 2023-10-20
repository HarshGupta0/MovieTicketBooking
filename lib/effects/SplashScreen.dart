import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movieticket/effects/glitch.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green.shade600, Colors.black26])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70.0,
                      ),
                      Center(
                        child:Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: GlithEffect(
                            child: Text(
                              "PicturePerfect",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  fontFamily: "BlackOpsOne",
                                  color: Colors.black54,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),),
                      Container(
                        alignment: Alignment.center,
                        child: LottieBuilder.asset('lottie/animation_lnj54bht.json'),
                      ),
                      Container(
                        child: Text(
                          "Invest Your Time",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "IndieFlower",
                              fontSize: 30,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        height: 100,
                        child: LottieBuilder.asset('lottie/animation_lnj51mpa.json'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          "Made By Harsh",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
