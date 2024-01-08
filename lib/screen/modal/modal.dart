import 'package:flutter/cupertino.dart';

class GlobalSvData {
  String name;
  String image;
  String link;

  GlobalSvData({
    required this.name,
    required this.image,
    required this.link,
  });
}

class Bookmark {
   String title;
   String url;

  Bookmark({required this.title, required this.url});
}

class TextControllerModal{
  TextEditingController titleTxt = TextEditingController();
  TextControllerModal({required this.titleTxt});
}

class WebListModal{
  String subTitle;
  String link;

  WebListModal({required this.subTitle,required this.link});
}