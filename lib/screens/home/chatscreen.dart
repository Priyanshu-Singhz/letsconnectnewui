import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import "dart:math" as math;
import 'package:sizer/sizer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          backgroundColor: Color(0xffF4F7FF),
          appBar: AppBar(
            leading: const BackButton(
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/notifications/pic1.png"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Harsh Maheshwari", style: MyTextStyle.smallheaderTheme),
                Spacer(),
                Icon(Icons.more_vert, color: Colors.black),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 75.h,
                  width: 100.w,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      CustomReceivedMessageUI(
                          receivedMsgTxt:
                              "Hi Cody, how are you? I saw on Jungle that we have Dragonfly in common. 😄"),
                      CustomSendMessageUI(
                          sendMsgTxt:
                              "Haha truly! Nice to meet you Harsh! What about a cup of coffee today evening? ☕️ "),
                      CustomReceivedMessageUI(
                          receivedMsgTxt: "Sure, let’s do it! 😊"),
                      CustomSendMessageUI(
                          sendMsgTxt:
                              "Great I will write later the exact time and place. See you soon!"),
                    ],
                  ),
                ),
                Container(
                  height: 72,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: 296,
                            height: 56,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffABB4C9)),
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffEFF3F6),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "    Type Your Message",
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            )),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                              stops: [0.0, 1.0],
                              colors: [
                                Colors.blue.shade600,
                                Colors.blue.shade400,
                              ],
                            ),
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomBubbleShape extends CustomPainter {
  final Color bgColor;

  CustomBubbleShape(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(-5, 0);
    path.lineTo(-3, 15);
    path.lineTo(5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CustomReceivedMessageUI extends StatelessWidget {
  final String receivedMsgTxt;
  const CustomReceivedMessageUI({
    required this.receivedMsgTxt,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final receivedMsgTxtGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Transform(
          transform: Matrix4.rotationY(math.pi),
          child: CustomPaint(
            painter: CustomBubbleShape(Colors.white),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              receivedMsgTxt,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 45, left: 15, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          receivedMsgTxtGroup,
        ],
      ),
    );
  }
}

class CustomSendMessageUI extends StatelessWidget {
  final String sendMsgTxt;
  const CustomSendMessageUI({
    required this.sendMsgTxt,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final sendMsgTxtGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              sendMsgTxt,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        CustomPaint(painter: CustomBubbleShape(Colors.blue)),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 15, left: 45, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          sendMsgTxtGroup,
        ],
      ),
    );
  }
}
