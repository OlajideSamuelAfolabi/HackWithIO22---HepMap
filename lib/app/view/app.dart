import 'package:flutter/material.dart';

import 'package:hack_with_io/onboarding/views/splash_screen.dart';


import 'package:hack_with_io/auth/views/sign_up.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignUpScreen(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
