import 'package:flutter/material.dart';
import 'package:barbearia/view/home_page/components/colors.dart';
import 'package:barbearia/view/home_page/components/size_config.dart';

class ThreeDSecure extends StatefulWidget {
  const ThreeDSecure({Key? key}) : super(key: key);

  @override
  _ThreeDSecureState createState() => _ThreeDSecureState();
}

class _ThreeDSecureState extends State<ThreeDSecure> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: SizeConfig.screenHeight!/22.77,        
            width: SizeConfig.screenWidth!/13.7,           
            child: Icon(Icons.receipt_long_outlined , color: buttonColor)
        ),
        Spacer(),
        Text("Pagamento com cartao",),
        SizedBox(width: SizeConfig.screenWidth!/41.1),     
        Icon(
          Icons.arrow_forward_ios,
          size: SizeConfig.screenHeight!/56.92,            
          color: Colors.black26,
        ),
      ],
    );
  }
}
