import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/module/about%20us.dart';

Widget Bbutton({
required var press,
required var  lname,
})=>MaterialButton(onPressed: press,color: Colors.orange,child: Text(lname,style: TextStyle(
color: Colors.white,fontWeight: FontWeight.bold,
),),);

Widget Draw(context)=>Drawer(
  child: SafeArea(
    child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/hero-bg.jpg'),
                fit: BoxFit.fill
            )
        ),
        child: ListView(
          children: [
            DrawerHeader(child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Foodie',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold,letterSpacing: 2),),
                  Text('.',textAlign: TextAlign.center,style: TextStyle(color: Colors.orange,fontSize: 28,fontWeight: FontWeight.bold,letterSpacing: 2),),

                ],
              ),
            ),),
            ListTile(title:Row(
              children: [
                Icon(Icons.home,color: Colors.orange,size: 30,),
                SizedBox(width: 20,),
                Text('Home',style: TextStyle(color: Colors.white,fontSize: 22),)
              ],
            )),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  AboutUs())
                );
              },
              child: ListTile(title:Row(
                children: [
                  Icon(Icons.home,color: Colors.orange,size: 30,),
                  SizedBox(width: 20,),
                  Text('About Us',style: TextStyle(color: Colors.white,fontSize: 22),)
                ],
              )),
            ),
            ListTile(title:Row(
              children: [
                Icon(Icons.shop,color: Colors.orange,size: 30,),
                SizedBox(width: 20,),
                Text('Shop',style: TextStyle(color: Colors.white,fontSize: 22),)
              ],
            )),
            ListTile(title:Row(
              children: [
                Icon(Icons.home,color: Colors.orange,size: 30,),
                SizedBox(width: 20,),
                Text('blog',style: TextStyle(color: Colors.white,fontSize: 22),)
              ],
            )),
            ListTile(title:Row(
              children: [
                Icon(Icons.perm_contact_calendar,color: Colors.orange,size: 30,),
                SizedBox(width: 20,),
                Text('Contact Us',style: TextStyle(color: Colors.white,fontSize: 22),)
              ],
            )),

          ],
        )
    ),
  ),
);
