import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone_app/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
                                  MaterialPageRoute(
                              builder: (_) => MainScreen()
                              ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/logo.ico', height: 100),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
