import 'package:flutter/material.dart';
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Text(
                "Sign Up",
                style: kHeadersTextStyle.copyWith(color: AppColors.kBlackColor),
              ),
            ),
            //TODO Decorate all Text Fields Widgets
            const TextField(),
            const TextField(),
            const TextField(),
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
          ],
        ),
      ),
    );
  }
}
