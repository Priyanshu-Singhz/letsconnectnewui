import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/colors.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Share Feedback",
          style: MyTextStyle.smallheaderTheme,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Choose Feedback Category",
                    style: MyTextStyle.xheaderTheme),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            InterestContainer(),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text("Your Feedback", style: MyTextStyle.xheaderTheme),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 176,
              width: 312,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "Please tell us more more about your experience",
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [Spacer(), Text("0/500")],
            ),
            SizedBox(
              height: 56,
            ),
            Container(
              height: 48,
              width: 312,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/profile/attachement.png"),
                    color: Color(0xff2D4379),
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Add Attachments",
                      style: MyTextStyle.smalfontheaderTheme),
                ],
              ),
            ),
            Spacer(),
            CustomButton(label: 'Next', onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class InterestContainer extends StatefulWidget {
  final List<String> options = [
    "Appreciation",
    "Suggest Improvement",
    "Bugs/Issues",
    "UX/UI Problem",
    "Other"
  ];
  final List<String> selectedList = [];

  InterestContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<InterestContainer> createState() => _InterestContainerState();
}

class _InterestContainerState extends State<InterestContainer> {
  bool isshowMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children:
              List.generate(isshowMore ? widget.options.length : 5, (index) {
            bool isSelected =
                widget.selectedList.contains(widget.options[index]);
            return InkWell(
              onTap: () {
                if (isSelected) {
                  widget.selectedList.remove(widget.options[index]);
                } else {
                  widget.selectedList.add(widget.options[index]);
                }

                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Text(
                  widget.options[index],
                  style: MyTextStyle.regularTheme.copyWith(
                    color: isSelected ? Colors.white : null,
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  gradient: isSelected ? AppColors.primaryGradient : null,
                  borderRadius: BorderRadius.circular(32),
                  border: isSelected
                      ? null
                      : Border.all(
                          color: Colors.grey,
                        ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
