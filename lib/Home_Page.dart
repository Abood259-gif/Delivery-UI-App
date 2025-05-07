import 'package:flutter/material.dart';
import 'Colors.dart';
import 'Second_Page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrownd_color,
      body: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60 , top: 100),
              child: Text("Your Favorite Food , " , style: TextStyle(
                color: Colors.white , fontSize: 40 , fontWeight: FontWeight.bold
              ),),
            ) , 
            Text("Delivered Fast" , style: TextStyle(
              color: Colors.white , fontSize: 35 , fontWeight: FontWeight.bold
            ),) , 
             Text("Find the best restaurants in your city and get it delivered to" , style: TextStyle(
              color: Colors.white , fontSize: 15 
            ),) , 
            Text("your place!" , style: TextStyle(
              color: Colors.white , fontSize: 15 
            ),) , 
            Image.asset('images/start.png') , 
            SizedBox(height: 10) ,
            Container(
              width: 350, height: 60,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
                );
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: orange , 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              child: Text("Order Now!" , style: TextStyle(color: Colors.black ,
fontWeight: FontWeight.bold , fontSize: 20
              ),)),
            )
          ],
        ),
      ),
    );
  }
}