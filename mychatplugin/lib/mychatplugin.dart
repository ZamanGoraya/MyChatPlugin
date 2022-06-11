import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/widgets.dart';

import 'mychatplugin_platform_interface.dart';

// class Mychatplugin {
//   Future<String?> getPlatformVersion() {
//     return MychatpluginPlatform.instance.getPlatformVersion();
//   }
// }

class MyChat extends StatefulWidget {
  const MyChat({Key? key}) : super(key: key);

  @override
  State<MyChat> createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  List<String> imgUrls = [
    "https://images.unsplash.com/photo-1552072092-7f9b8d63efcb",
    "https://images.unsplash.com/flagged/photo-1574005280900-3ff489fa1f70",
    "https://images.unsplash.com/photo-1591117207239-788bf8de6c3b",
    "https://images.unsplash.com/photo-1606335543042-57c525922933",
    "https://images.unsplash.com/photo-1606335543042-57c525922933"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(imgUrls.first),
    );
  }
}
