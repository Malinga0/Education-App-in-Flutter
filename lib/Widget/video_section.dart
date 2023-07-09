import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  List videoList = [
    'Introduction to flutter',
    'Installing Flutter on windows',
    'Setup Emulator on windows',
    'Create First App'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color:
                  index == 0 ? Colors.purple : Colors.purple.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 min  50 sec"),
        );
      },
    );
  }
}
