import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hack_with_io/app/utils/utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  "Sign Up",
                  style:
                      kHeadersTextStyle.copyWith(color: AppColors.kBlackColor),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: kInfoTextStyle,
                    suffixIcon: SvgPicture.asset(
                      'assets/email.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 10, bottom: 30),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
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
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    labelText: 'Confirm Pasword',
                    labelStyle: kInfoTextStyle,
                    suffixIcon: SvgPicture.asset(
                      'assets/password.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
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
                    "REGISTER",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: AppColors.kwhiteColor),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Text("By clicking \"REGISTER\", you agree to HepMap",
                    style:
                        kInfoTextStyle.copyWith(color: AppColors.kBlackColor)),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("Privacy Policy",
                      style: kInfoTextStyle.copyWith(
                          color: AppColors.kBlueColor))),
              Container(
                height: 50,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already registered?",
                        style: kInfoTextStyle.copyWith(
                            color: AppColors.kBlackColor)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: kInfoTextStyle.copyWith(
                            color: AppColors.kBlueColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
