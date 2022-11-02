import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text("Foodie",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        // title: RichText(
        //   text: TextSpan(
        //     text: 'Hello ',
        //       style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        //     children: const <TextSpan>[
        //       TextSpan(text: '.', style: TextStyle(color: Colors.orange)),
        //     ],
        //   ),
        // ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 20),
                MaterialButton(onPressed: (){},color: Colors.orange,child: Text('Reservation',style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,
                ),),)
              ],
            ),
          )
        ],
        elevation: 0.2,
      ),
      drawer: Drawer(
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
                ListTile(title:Row(
                  children: [
                    Icon(Icons.home,color: Colors.orange,size: 30,),
                    SizedBox(width: 20,),
                    Text('About Us',style: TextStyle(color: Colors.white,fontSize: 22),)
                  ],
                )),
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
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/hero-bg.jpg'),
                      fit: BoxFit.fill
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text('Eat Sleep And',style: TextStyle(
                      fontSize: 17,color: Colors.orange,fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: 15,),
                    Container(
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.only(left:25.0),
                          child: Text('Supper delicious Burger in town!',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white,),),
                        )),
                    SizedBox(height: 15,),
                    Container(
                        width: 300,
                        child: Text('Food is any substance consumed to provide nutritional support for an organism.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(.7),),
                            textAlign: TextAlign.center,
                            )),
                    SizedBox(height: 15,),
                    MaterialButton(onPressed: (){},color: Colors.orange,child: Text('Book A Table',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,
                    ),),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 480,
              child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>Container(
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.orange,
                        width: 3
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Image.asset('images/piza.png',height: 100,width: 100,),
                            SizedBox(height: 10,),
                            Text('Maxican Pizza',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text('Food is any substance consumed to provide nutritional support for an organism.',
                                style: TextStyle(color: Colors.grey[700],fontSize: 18),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: double.maxFinite,
                        height: 220,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                                color: Colors.white,
                                width: 3
                            )
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/piza2.png',height: 200,width: 200,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index)=>SizedBox(width: 10,),
              itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
