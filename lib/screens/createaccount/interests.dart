import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Interests extends StatefulWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  State<Interests> createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    "What interests you ?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 43, 76),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    "Pick at least 5 interests. These will be used to match you with future connections.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 43, 76),
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        prefixIcon: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.search),
                          width: 10,
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
