import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hack_with_io/app/utils/utils.dart';

class SuccessfullyRegisteredScreen extends StatefulWidget {
  const SuccessfullyRegisteredScreen({Key? key}) : super(key: key);

  @override
  State<SuccessfullyRegisteredScreen> createState() =>
      _SuccessfullyRegisteredScreenState();
}

class _SuccessfullyRegisteredScreenState
    extends State<SuccessfullyRegisteredScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: SvgPicture.asset('assets/registered-illust.svg'),
              ),
              Text("You have successfully registered!",
                  style: kInfoTextStyle.copyWith(color: AppColors.kBlackColor)),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 50, right: 50),
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
            ],
          ),
        ),
      ),
    );
  }
}
