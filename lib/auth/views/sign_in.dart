import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hack_with_io/app/utils/utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Text(
                  "Welcome",
                  style:
                      kHeadersTextStyle.copyWith(color: AppColors.kBlackColor),
                ),
              ),
              Text(
                "back!",
                style: kHeadersTextStyle.copyWith(color: AppColors.kBlackColor),
              ),
              const SizedBox(height: 20),
              Text(
                "Get your health",
                style: kHeaderTaglineTextStyle.copyWith(
                    color: AppColors.kBlackColor),
              ),
              Text(
                "back on track",
                style: kHeaderTaglineTextStyle.copyWith(
                    color: AppColors.kBlackColor),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: kInfoTextStyle,
                    suffixIcon: SvgPicture.asset(
                      "assets/username.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    // fillColor: Colors.grey,
                    // filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: kInfoTextStyle,
                    suffixIcon: SvgPicture.asset(
                      'assets/password.svg',
                      fit: BoxFit.scaleDown,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    // fillColor: Colors.g,
                    // filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                padding: const EdgeInsets.only(left: 35, right: 35),
                width: double.infinity,
                child: RawMaterialButton(
                  onPressed: () {},
                  fillColor: AppColors.kBlueColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: AppColors.kwhiteColor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("Forgot your password?",
                    style:
                        kInfoTextStyle.copyWith(color: AppColors.kBlackColor)),
              ),
              const SizedBox(height: 80),
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text("Don't have an account?",
                        style: kInfoTextStyle.copyWith(
                            color: AppColors.kBlackColor)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: kInfoTextStyle.copyWith(
                            color: AppColors.kBlueColor),
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
