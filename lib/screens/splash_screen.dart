import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:openweather/screens/home_page.dart';

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
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://th.bing.com/th/id/OIP.eiW3mRdaomnuhIqHrZIDIgAAAA?pid=ImgDet&w=207&h=92&c=7'),
            const SizedBox(
              height: 5,
            ),
            const CupertinoActivityIndicator(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
