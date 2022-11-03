import 'package:flutter/material.dart';
import 'package:foodie/layoute/home.dart';
import 'package:foodie/shared/component.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('About US'),centerTitle: true,backgroundColor: Colors.orange,
        leading: InkWell(
            onTap: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  home())
              );
            },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Image.asset('images/banner.png',height: 200,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Caferio, Burgers, and Best Pizzas ',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('In Town',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange),)
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('The restaurants in Hangzhou also catered to many northern Chinese who had fled south from Kaifeng during the Jurchen invasion of the 1120s, while it is also known that many restaurants were run by families.',
                  style: TextStyle(color: Colors.grey[600],fontSize: 18,fontWeight: FontWeight.w600,),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle,color: Colors.orange,),
                  SizedBox(width: 15,),
                  Text('Delicious & Healthy Foods',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle,color: Colors.orange,),
                  SizedBox(width: 15,),
                  Text('Spacific Family And Kids Zone',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle,color: Colors.orange,),
                  SizedBox(width: 15,),
                  Text('Music & Other Facilities',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle,color: Colors.orange,),
                  SizedBox(width: 15,),
                  Text('Fastest Food Home Delivery',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                  )
                ],
              ),
              Spacer(),
              Bbutton(
                  lname: 'Order Now',
                  press: (){}
              ),


            ],
          ),
        )
        ,
      ),
    );
  }
}
