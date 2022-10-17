import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final int selected;
  final Function callback;
  final tabs = ["Received", "Sent"];
  CustomTab(this.selected, this.callback, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        height: 40,
        width: 312,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => GestureDetector(
                  onTap: () {
                    callback(index);
                  },
                  child: Container(
                    height: 36,
                    width: 154,
                    decoration: BoxDecoration(
                      color: selected == index ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      tabs[index],
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
            separatorBuilder: (_, index) => const SizedBox(
                  width: 0,
                ),
            itemCount: tabs.length),
      ),
    );
  }
}
