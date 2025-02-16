import 'package:flutter/material.dart';
import 'package:barbearia/view/home_page/components/size_config.dart';
import 'package:barbearia/view/search_page/search_page_view.dart';

class SearchFood extends StatefulWidget {
  const SearchFood({Key? key}) : super(key: key);

  @override
  _SearchFoodState createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.screenWidth!/20.55,                
            SizeConfig.screenHeight!/85.375,              
            SizeConfig.screenWidth!/20.55,               
            SizeConfig.screenHeight!/85.375,              
        ),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPageView()));
            print("hello");
          },
          child: Container(
            height: SizeConfig.screenHeight!/13.66,          
            width: SizeConfig.screenWidth!/1.068,            
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 6,
                  color: Colors.black.withOpacity(0.3),
                )
              ]
            ),
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.search, color: Colors.black26,),
                ),
                Text("Search", style: TextStyle(color: Colors.black26, fontSize: SizeConfig.screenHeight!/42.69))    
              ],
            )
          ),
        ),
      ),
    );
  }
}
