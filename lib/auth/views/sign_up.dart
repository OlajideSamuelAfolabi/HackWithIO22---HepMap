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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: kHeadersTextStyle.copyWith(
                        color: AppColors.kBlackColor),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Email',
                    style: kTextBoxLabelTextStyle.copyWith(
                        color: AppColors.kBlackColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
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
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Password',
                    style: kTextBoxLabelTextStyle.copyWith(
                        color: AppColors.kBlackColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
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
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Confirm Password',
                    style: kTextBoxLabelTextStyle.copyWith(
                        color: AppColors.kBlackColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
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
                RawMaterialButton(
                  onPressed: () {},
                  fillColor: AppColors.kBlueColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  constraints: const BoxConstraints(minHeight: 40.0),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: AppColors.kwhiteColor),
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                      text: 'By clicking "REGISTER", you agree to HepMap ',
                      style: kTextBoxLabelTextStyle.copyWith(
                        color: AppColors.kBlackColor,
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy',
                          style: kTextBoxLabelTextStyle.copyWith(
                              color: AppColors.kBlueColor),
                        ),
                        const TextSpan(text: '.')
                      ]),
                ),
                Container(
                  height: 30,
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
      ),
    );
  }
}
