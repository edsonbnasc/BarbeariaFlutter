import 'package:flutter/material.dart';
import 'package:barbearia/view/home_page/components/size_config.dart';

class TextTitle extends StatelessWidget {
  String title;
  TextTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title, style: TextStyle(color: Colors.white, fontSize: SizeConfig.screenHeight!/22.77, fontWeight: FontWeight.bold),),   
      alignment: Alignment.center,
    );
  }
}
