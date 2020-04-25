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
               CityCard(url:"assets/images/athens.jpg" ,cityname: "Athens",time: "Feb 2020",disc: "45%",oldP: "\$3000",newP: "\$2000",),
               CityCard(url: "assets/images/lasvegas.jpg",cityname: "Athens",time: "Feb 2020",disc: "45%",oldP: "\$3000",newP: "\$2000"),
               CityCard(url: "assets/images/sydney.jpeg",cityname: "Athens",time: "Feb 2020",disc: "45%",oldP: "\$3000",newP: "\$2000")
              ],
            ),
          )
        ],
      ),
    );
  }
}
class CityCard extends StatelessWidget {
  final String cityname,url,newP,oldP,disc,time;
  CityCard({this.cityname,this.url,this.newP,this.oldP,this.disc,this.time});
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Stack(
            
            children: <Widget>[
             
                              Container(
                 
                  height: 210,width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(url),fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20)
                  
                  
                ),
              ),
              Positioned(
                left: 10,
                bottom: 10,
                       
                          
                          
                child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(cityname,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(time,style: TextStyle(color: Colors.white,fontSize: 14))
                  ],
                ),
               
                 
              ),
              Positioned(
                right: 19,
                bottom: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(disc,style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              
            ],
            
          ),
      
             Row(
               children: <Widget>[
                 Text("aa"),
                 Text("aa")
               ],
             )
        ],
      ),
    );
  }
}