import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../repo/repo.dart';

class MyWidgetBuilder{

  Widget socialButton({required Uri url, required FaIcon icon}){
    return InkWell(
      onTap: (){
        repo().launchThisUrl(url: url);
      },
      child: icon,
    );
  }

}