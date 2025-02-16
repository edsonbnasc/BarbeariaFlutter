import 'package:flutter/material.dart';
import 'package:barbearia/configuration/food.dart';
import 'package:barbearia/configuration/food_list.dart';
import 'package:barbearia/view/favorite_page/widgets/favorite_cart_icon.dart';
import 'package:barbearia/view/favorite_page/widgets/favorite_icon.dart';
import 'package:barbearia/view/favorite_page/widgets/favorite_image.dart';
import 'package:barbearia/view/home_page/components/size_config.dart';

class FavoritePageView extends StatefulWidget {
  const FavoritePageView({Key? key}) : super(key: key);

  @override
  _FavoritePageViewState createState() => _FavoritePageViewState();
}

class _FavoritePageViewState extends State<FavoritePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title : Text("My Favorite", style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth!/20.0, vertical: SizeConfig.screenHeight!/136.6),   
        child: FutureBuilder<List<Food>>(
            future: bringTheFoods(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                var foodList = snapshot.data;
                return GridView.builder(
                    itemCount: 3,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      childAspectRatio: 3.2/4,
                    ),
                    itemBuilder: (context, index) {
                      var food = foodList![index];
                      return Stack(
                        children: [
                          Container(
                              height: SizeConfig.screenHeight!/3.10,       
                              width: SizeConfig.screenWidth!/2.06,         
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      color: Colors.black.withOpacity(0.1),
                                    )
                                  ]),
                              child: Stack(
                                children: [
                                  FavoriteDetail(food_image_name: food.foodImageName, food_name: food.foodName, food_category: food.foodCategory, food_price: food.foodPrice),
                                  FavoriteCartIcon(),
                                  FavoriteIcon(),
                                ],
                              )),
                        ],
                      );
                    }
                );
              }
              else{
                return Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight!/3.10),         
                  child: Column(
                    children: [
                      Center(child: Icon(Icons.favorite, color: Colors.black12, size: SizeConfig.screenHeight!/11.39,)),  
                      SizedBox(height: SizeConfig.screenHeight!/34.15,),                
                      Center(child: Text("Your Favorite Foods", style: TextStyle(color: Colors.black12, fontSize: SizeConfig.screenHeight!/34.15),))         
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
