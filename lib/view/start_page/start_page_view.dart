import 'package:flutter/material.dart';
import 'package:barbearia/view/home_page/components/size_config.dart';
import 'package:barbearia/view/login_page/widgets/text_title.dart';
import 'package:barbearia/view/start_page/widgets/login_button_widget.dart';
import 'package:barbearia/view/start_page/widgets/register_button_widget.dart';

class StartPageView extends StatefulWidget {
  const StartPageView({Key? key}) : super(key: key);

  @override
  _StartPageViewState createState() => _StartPageViewState();
}

class _StartPageViewState extends State<StartPageView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: SizeConfig.screenHeight!/2.732,    /// 250.0
            decoration: BoxDecoration(
              color: Color.fromARGB(178, 15, 14, 14),
                // image: DecorationImage(
                //     image: AssetImage('assets/main/fundoo.jpg'),
                //     fit: BoxFit.fill
                // )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: SizeConfig.screenWidth!/1.83,     
                height: SizeConfig.screenHeight!/5.174,  
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/main/logo.png",)
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0,
                    SizeConfig.screenHeight!/68.3,               
                    0,
                    SizeConfig.screenHeight!/11.38             
                ),
                child: Column(
                  children:[
                    Center(
                      child: TextTitle(title: "Bem vindo",),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth!/10.28, vertical: SizeConfig.screenHeight!/136.6),    /// 40.0 - 5.0
                      child: Center(child: Text("Seja bem vindos ao melhor salão da região.", style: TextStyle(color: Colors.white60),
                        textAlign: TextAlign.center,),),
                    )
                  ]
                ),
              ),
              LoginButton(),
              RegisterButtonWidget()
            ],
          )
        ],
      ),
    );
  }
}
