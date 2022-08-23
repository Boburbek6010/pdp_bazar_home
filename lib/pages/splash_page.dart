import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pdp_bazar_home/pages/welcome_page.dart';


class SplashPage extends StatefulWidget {
  static const id = "/splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  Future<void> _goto() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }

  @override
  void initState() {
    _goto();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              flex: 8,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image(
                  image: AssetImage("assets/images/welcome.png"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Lottie.asset("assets/lotties/welcome.json"),
            ),
          ],
        ),
      ),
    );
  }
}
