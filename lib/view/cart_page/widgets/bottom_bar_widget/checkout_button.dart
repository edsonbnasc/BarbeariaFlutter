import 'package:flutter/material.dart';
import 'package:barbearia/view/checkout_page/checkout_page_view.dart';
import 'package:barbearia/view/home_page/components/colors.dart';
import 'package:barbearia/view/home_page/components/size_config.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({Key? key}) : super(key: key);

  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutPageView()));
      },
      child: Container(
          width: SizeConfig.screenWidth!/1.02 ,             
          height: SizeConfig.screenHeight!/12.42,           
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(30)
          ),
          child: Center(
              child: Text("Checkout",
                style: TextStyle(color: Colors.white, fontSize: SizeConfig.screenHeight!/34.15, fontWeight: FontWeight.bold),     
              )
          )
      ),
    );
  }
}
