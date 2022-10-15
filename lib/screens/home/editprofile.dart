import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Edit Profile",
          style: MyTextStyle.smallheaderTheme,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: new Icon(
                              Icons.camera_alt,
                              color: Color(0xff3086EB),
                            ),
                            title: new Text(
                              'Take Photo',
                              style: MyTextStyle.regularTheme,
                            ),
                            onTap: () {},
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                            child: Image.asset(
                                "assets/createaccount/divideline.png"),
                          ),
                          ListTile(
                            leading: new Icon(
                              Icons.photo,
                              color: Color(0xff3086EB),
                            ),
                            title: new Text(
                              'Choose from gallary',
                              style: MyTextStyle.regularTheme,
                            ),
                            onTap: () {},
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 312,
                  width: 312,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 204,
                            width: 204,
                            child: Image(
                              image: AssetImage("assets/homepage/picker1.png"),
                            ),
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffEFF3F6),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 96,
                                width: 96,
                                child: Center(
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffEFF3F6),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 96,
                                width: 96,
                                child: Center(
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEFF3F6),
                                borderRadius: BorderRadius.circular(10)),
                            height: 96,
                            width: 96,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEFF3F6),
                                borderRadius: BorderRadius.circular(10)),
                            height: 96,
                            width: 96,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEFF3F6),
                                borderRadius: BorderRadius.circular(10)),
                            height: 96,
                            width: 96,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              CustomLabel(label: "Name"),
              Customfield(hinttext: ""),
              CustomLabel(label: "Living In"),
              Customfield(hinttext: "Eg: New York"),
              CustomLabel(label: "Education"),
              Customfield(hinttext: "Eg: Bachelor of Engineering, Harvard"),
              CustomLabel(label: "Job Title & Company"),
              Customfield(hinttext: "Eg: Product Designer, Google"),
              CustomLabel(label: "Industry"),
              Customfield(hinttext: "Eg: Tech"),
              CustomLabel(label: "Total Work Experience"),
              Customfield(hinttext: "Eg: 5 Years & 4 Months"),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLabel extends StatelessWidget {
  final String label;
  const CustomLabel({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$label",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.star,
          size: 5,
          color: Colors.red,
        )
      ],
    );
  }
}

class Customfield extends StatelessWidget {
  final String hinttext;
  const Customfield({Key? key, required this.hinttext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          hintText: '$hinttext',
        ),
        keyboardType: TextInputType.number);
  }
}
