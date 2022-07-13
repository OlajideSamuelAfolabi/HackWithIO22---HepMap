import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hack_with_io/app/utils/utils.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90.0, bottom: 10),
            child: Text("HepMap",
                style:
                    kSmallLogoTextStyle.copyWith(color: AppColors.kBlueColor)),
          ),
          Text("Hepatitis",
              style: kHeadersTextStyle.copyWith(color: AppColors.kBlackColor)),
          const SizedBox(height: 5),
          Text("Communal",
              style: kHeadersTextStyle.copyWith(color: AppColors.kBlackColor)),
          const SizedBox(height: 5),
          Text("Support",
              style: kHeadersTextStyle.copyWith(color: AppColors.kBlackColor)),
          const SizedBox(height: 10),
          Text("Connect and share your",
              style: kHeaderTaglineTextStyle.copyWith(
                  color: AppColors.kBlackColor)),
          Text("experiences with others.",
              style: kHeaderTaglineTextStyle.copyWith(
                  color: AppColors.kBlackColor)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SvgPicture.asset('assets/getstarted-illust.svg'),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30),
            width: double.infinity,
            child: RawMaterialButton(
              onPressed: () {},
              fillColor: AppColors.kBlueColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Text(
                "GET STARTED",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: AppColors.kwhiteColor),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already registered?",
                  style: kInfoTextStyle.copyWith(color: AppColors.kBlackColor),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: kInfoTextStyle.copyWith(color: AppColors.kBlueColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
