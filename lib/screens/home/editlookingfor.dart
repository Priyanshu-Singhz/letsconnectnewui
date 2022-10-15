// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/colors.dart';

import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';

class EditLookingfor extends StatefulWidget {
  const EditLookingfor({Key? key}) : super(key: key);

  @override
  State<EditLookingfor> createState() => _EditLookingforState();
}

class _EditLookingforState extends State<EditLookingfor> {
  List<String> creativityList = [
    'Blogging',
    'Photography',
    'Vlogging',
    'Art',
    'Design',
    'Makeup',
    'Writing',
    'Making videos',
    'Crafts',
    'creativity1',
    'creativity2',
    'creativity3',
    'creativity4',
    'creativity5',
    'creativity6',
    'creativity7',
    'creativity8',
  ];

  List<String> selectedCreativityList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Interests",
          style: MyTextStyle.smallheaderTheme,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: SizedBox(
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Header(),
                  SizedBox(
                    height: 32,
                  ),
                  InterestContainer(
                    heading: 'Personal',
                    options: creativityList,
                    selectedList: selectedCreativityList,
                  ),
                  InterestContainer(
                    heading: 'Professional',
                    options: creativityList,
                    selectedList: [],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                      label: 'Next',
                      onTap: () {
                        Get.back();
                      }),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xffABB4C9),
          size: 20,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hintText: 'Search Interest',
        filled: true,
        fillColor: Color(0xffABB4C9).withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xffABB4C9),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What interests you?',
          style: MyTextStyle.headerTheme,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: 'Pick at ',
            style: MyTextStyle.mediumTheme,
            children: [
              TextSpan(
                text: 'least 3 things',
                style: MyTextStyle.mediumTheme.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'you are looking for',
                    style: MyTextStyle.mediumTheme,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InterestContainer extends StatefulWidget {
  final String heading;
  final List<String> options;
  final List<String> selectedList;

  const InterestContainer({
    Key? key,
    required this.heading,
    required this.options,
    required this.selectedList,
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
        Text(
          widget.heading,
          style: MyTextStyle.mediumTheme.copyWith(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Wrap(
          children:
              List.generate(isshowMore ? widget.options.length : 10, (index) {
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
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  isshowMore = !isshowMore;
                });
              },
              child: Row(
                children: [
                  Text(
                    isshowMore ? 'Show less' : 'Show more',
                    style: MyTextStyle.regularTheme,
                  ),
                  Icon(
                    isshowMore ? Icons.arrow_upward : Icons.arrow_downward,
                    color: AppColors.fontColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
