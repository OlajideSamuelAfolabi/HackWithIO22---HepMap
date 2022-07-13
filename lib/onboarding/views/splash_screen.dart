import 'package:flutter/material.dart';
import 'package:hack_with_io/app/utils/utils.dart';
import 'package:hack_with_io/home/views/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// Don't bother about this just continue with your work
  ///
  /// :)
  Future<void> trasitToOnboardingPage() async {
    final prefs = await SharedPreferences.getInstance();
    final showOnbarding = prefs.getBool('showOnboarding') ?? false;
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return showOnbarding
                ? const HomeView()
                : const Center(
                    child: Text('hi'),
                  );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: AppColors.kBlueColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HepMap",
                style: kLogoTextStyle.copyWith(
                  color: AppColors.kwhiteColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "You don't want to go",
                style: kTaglineTextStyle.copyWith(
                  color: AppColors.kwhiteColor,
                ),
              ),
              Text("through this alone.",
                  style:
                      kTaglineTextStyle.copyWith(color: AppColors.kwhiteColor)),
            ],
          )),
    );
  }
}
