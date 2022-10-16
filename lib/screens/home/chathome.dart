import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          children: [
            SizedBox(
              height: 64,
            ),
            Text("Invitations", style: MyTextStyle.headerTheme),
            SizedBox(height: 16),
          ],
        ),
      ),


      


      
    );
  }
}
