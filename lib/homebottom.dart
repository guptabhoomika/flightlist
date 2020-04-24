import 'package:flightlist/colors.dart';
import 'package:flutter/material.dart';
class HomeBottom extends StatefulWidget {
  @override
  _HomeBottomState createState() => _HomeBottomState();
}

class _HomeBottomState extends State<HomeBottom> {
  static const TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10,0, 0),
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Text("Currently watched items",style: dropDownMenuItemStyle,),
              Spacer(),
              Text("View All(12)",style: TextStyle(fontSize: 14,color: appTheme.primaryColor),)
            ],
            
          ),
          Container(
            height: 210,
            child: ListView(
        
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(height: 210,width: 160,color: Colors.blueGrey,margin: EdgeInsets.symmetric(horizontal: 10),),
                 Container(height: 210,width: 160,color: Colors.blueGrey,margin: EdgeInsets.symmetric(horizontal: 10)),
                  Container(height: 210,width: 160,color: Colors.blueGrey,margin: EdgeInsets.symmetric(horizontal: 10))
              ],
            ),
          )
        ],
      ),
    );
  }
}