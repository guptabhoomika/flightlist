import 'package:flightlist/colors.dart';
import 'package:flutter/material.dart';
class HomeTop extends StatefulWidget {
  @override
  _HomeTopState createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  List<String> locations = [
    "Boston (BOS)",
    "New York City (JFK)"
  ];
  bool isFlight = true;
static const TextStyle dropDownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);
static const TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);
    var selectedindex =0;
    
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomSClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.65 ,
           decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  firstColor,
                  secondColor
                ]
              )
           ),
           
      
                        child: Column(
               children: <Widget>[
                 SizedBox(height: 30,),
                 Row(
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Icon(Icons.location_on,color: Colors.white,),
                     ),
                     SizedBox(width:5),
                     
                     PopupMenuButton(
                      
                       
                       onSelected: (index){
                         setState(() {
                           selectedindex = index;
                            
                         });
                            print(selectedindex);
                       },
                            
                       child: Row(
                         children: <Widget>[
                           
                           Text(locations[selectedindex],style: dropDownLabelStyle,),
                           Icon(Icons.arrow_drop_down,color: Colors.white,)
                         ],
                       ),
                       itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                         PopupMenuItem(child: Text(locations[0],style: dropDownMenuItemStyle),value: 0,),
                         PopupMenuItem(child: Text(locations[1],style: dropDownMenuItemStyle,),value: 1,)
                       ],
                     ),
                     Spacer(),
                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Icon(Icons.settings,color: Colors.white,),
                     )
                   ],
                 ),
                 SizedBox(height: 50,),
                 
                 Text("Where would",style: TextStyle(color: Colors.white,fontSize: 26),),
                 Text("you like to go?",style: TextStyle(color: Colors.white,fontSize: 26)),
                 SizedBox(height: 30,),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                 child: Material(
                   elevation: 0.0,
                   borderRadius:BorderRadius.circular(50),
                   child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                        suffixIcon: Material(
                          elevation: 2.0,
                          borderRadius:BorderRadius.circular(50),
                          child: Icon(Icons.search,color: Colors.black,),
                        )
                      ),
                      controller: TextEditingController(text: locations[selectedindex]),
                      
                      cursorColor: appTheme.primaryColor,
                      style: dropDownMenuItemStyle,
                   ),

                 ),),
                 SizedBox(height: 20,),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Chip(icon: Icons.flight_takeoff,text:'Flights',isSelected: isFlight,),
                     SizedBox(width: 15,),
                     Chip(icon: Icons.hotel,text: 'Hotels',isSelected: !isFlight),
                   ],
                 )
                 
               ],
             ),
          
           
          ),


        )
      ],
      
    );
  }
}
class CustomSClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0, size.height);
    var firstEndPoint = Offset(size.width * 0.4,size.height-30);
    var firstControlpoint = Offset(size.width *0.20,size.height-50);
    path.quadraticBezierTo(firstControlpoint.dx, firstControlpoint.dy,firstEndPoint.dx, firstControlpoint.dy);
    var secondEndPoint = Offset(size.width, size.height - 75.0);
    var secondControlPoint = Offset(size.width * .75, size.height - 10);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
class Chip extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  Chip({this.icon,this.text,this.isSelected});
  @override
  _ChipState createState() => _ChipState();
}

class _ChipState extends State<Chip> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration: widget.isSelected
          ? BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            )
          : null,
      child: Row(
        children: <Widget>[
            Icon(widget.icon,size: 20,color: Colors.white,),
            SizedBox(width: 8,),
            Text(widget.text,style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),)
        ],

        
      ),
    );
  }
}