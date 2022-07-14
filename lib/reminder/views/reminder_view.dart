import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hack_with_io/app/utils/utils.dart';

class ReminderView extends StatefulWidget {
  const ReminderView({Key? key}) : super(key: key);

  @override
  State<ReminderView> createState() => _ReminderViewState();
}

class _ReminderViewState extends State<ReminderView> {
  // String dateTime = DateTime.now().toString();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/Arrow-left.svg"),
              ),
              Row(children: [
                Text(
                  "July, 2022",
                  style: kInfoTextStyle.copyWith(color: AppColors.kBlackColor),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/Arrow-down.svg"),
                ),
              ]),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/Search-icon.svg"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Card(
                      child: Text("lol"),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Card(
                      child: Text("lol"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Card(
                      shadowColor: Colors.grey,
                      color: AppColors.kBlueColor,
                      child: const Text("lol"),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Card(
                      child: Text("lol"),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Card(
                      child: Text("lol"),
                    ),
                  ),
                ]),
          ),
          Text("Today",
              style: kHeaderTaglineTextStyle.copyWith(
                  color: AppColors.kBlueColor)),
        ],
      ),
    ));
  }
}
