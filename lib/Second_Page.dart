import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Home_Page.dart';
import 'Colors.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
String s = '\$' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrownd_color,
      body: Expanded(
        child: Container(
          child: Column(
            children: [
              upper() , 
              Column(
                children: [
                  Row(
                    children: [
                      menu(text: 'Pizza', image: 'images/pizza.png',prise: '\$6',color: con1,) ,
                      menu(text: 'Taco', image: 'images/taco.png',prise: '\$12',color: con2,) 
                    ],
                  ) , 
                  SizedBox(height: 10,) ,
                  Row(
                    children: [
                      menu(text: 'Chinese', image: 'images/chinese.png',prise: '\$9',color: con3,) ,
                      menu(text: 'Chicken', image: 'images/chicken.png',prise: '\$10',color: con4,) 
                    ],
            
                  ) , 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Container upper() {
    return Container(
      height: 470,
      child: Stack(
        children: [
          Container(
            height: 400,
            child: Image.asset('images/circ.png' , 
            ),
          ) , 
          Positioned(
            top: 160,left: 20,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Icon(Icons.keyboard_arrow_left_outlined , size: 35,))) , 
            Positioned(
              top: 200, left: 30,
              child: Row(
                children: [
                  Text("Restaurants" , style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(width: 10,) ,
                  CircleAvatar(radius: 5,) , 
                  SizedBox(width: 10,) ,
                  Text("Takeaway" , style: TextStyle(
                    fontSize: 20
                  ),)
                ],
              )) , 
              Positioned(
                top: 220, left: 30,
                child: Text('Fast Food' , style:TextStyle(
                  fontSize: 50 , fontWeight: FontWeight.bold
                )),
              ) , 
              Positioned(
                top: 250,  left: 50,
                child: Container(
                  height: 220,
                  child: Image.asset('images/wom2.png')))
        ],
      ),
    );
  }
}

class menu extends StatelessWidget {
  String text = '' , image = '' ; String prise = '' ;  Color color = Colors.white ;
   menu({
    super.key, required this.text , required this.image , required this.prise , 
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 230, width: 200,
        decoration: BoxDecoration(
      color: color , 
      borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(text , style: TextStyle(
                fontSize: 30 , fontWeight: FontWeight.bold
              ),),
            ) , 
            Padding(
              padding: const EdgeInsets.only(right: 120 , top: 10),
              child: Container(
                width: 50,height: 30,
                decoration: BoxDecoration(
                  color: Colors.white , 
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Center(
                  child: Text(" $prise",style: TextStyle(
                    fontWeight: FontWeight.bold , 
                    fontSize: 20
                  ), ),
                ),
              ),
            ) , 
            Expanded(
              child: Container(
                height: 200,
                child: Image.asset(image)),
            )
          ],
        ),
      ),
    );
  }
}