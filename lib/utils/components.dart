import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/other_page.dart';
import 'package:flutter_getx/screens/sum_page.dart';
import 'package:get/route_manager.dart';

void getBottomSheet() {
  Get.bottomSheet(
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Select From BottomSheet')),
          ),
          ListTile(
            leading: Icon(Icons.music_video, color: Colors.pink),
            title: Text(
              'Music',
              style: TextStyle(
                  color: Colors.pink.shade900, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.video_collection,
              color: Colors.purple,
            ),
            title: Text(
              'Video',
              style: TextStyle(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          )
        ],
      ),
    ),
    backgroundColor: Colors.grey[200],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
  );
}

void getDialogs() {
  Get.defaultDialog(
      title: 'Default Dialog', content: Text('Show Dialog Content Here...'));
}

void getSnackBar({String position}) {
  Color _bgColor = Colors.green.shade900;
  SnackPosition _xPosition;
  if (position != null && position.toLowerCase() == 'top') {
    _xPosition = SnackPosition.TOP;
  } else {
    _xPosition = SnackPosition.BOTTOM;
  }
  Get.snackbar(
    'Message',
    'Show SnackBar For Testing.',
    snackPosition: _xPosition,
    backgroundColor: _bgColor.withOpacity(0.5),
    borderColor: _bgColor.computeLuminance() >= 0.5
        ? _bgColor
        : _bgColor.withOpacity(0.2),
    borderWidth: 1.5,
    snackStyle: SnackStyle.FLOATING,
    colorText:
    _bgColor.computeLuminance() >= 0.5 ? Colors.black : Colors.white,
  );
}

void navigationOtherPage() {
  Get.to(() => SumPage());
  // Get.to(() => OtherPage());
}