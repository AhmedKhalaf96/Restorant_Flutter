import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie/shared/component.dart';

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
      drawer: Draw(context),
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
            SizedBox(height: 20,),
            Container(
              color: Color.fromRGBO(230, 217, 217,.4),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Our Delicious ',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                        Text('Foods',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.orange),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Food is any substance consumed to provide nutritional support for an organism.',
                        style: TextStyle(color: Colors.grey[600],fontSize: 18,fontWeight: FontWeight.w600,),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10,),

                    Container(
                      color: Color.fromRGBO(230, 217, 217,.4),
                      child: GridView.count(
                          mainAxisSpacing: 5,crossAxisSpacing: 5,childAspectRatio: 1/1.6    ,
                          crossAxisCount: 2,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                          children: List.generate(4, (index) =>BuildProductGrid(context))
                      ),
                    )
                  ],
                ),
              )
            ),
            SizedBox(height: 20,),
            Container(
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/hero-bg.jpg'),
                      fit: BoxFit.cover
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text('The Foodie Have Excellent Of  ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text('Quality Burgers!',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange),),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('The restaurants in Hangzhou also catered to many northern Chinese who had fled south from Kaifeng during the Jurchen invasion of the 1120s, while it is also known that many restaurants were run by families.',
                        style: TextStyle(color: Colors.white.withOpacity(.7),fontSize: 16,fontWeight: FontWeight.w600,),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Bbutton(press: (){}, lname: 'Order Now'),
                    SizedBox(height: 10,),
                    Image.asset('images/hero.png',height: 200,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
  Widget BuildProductGrid(context)=>Container(
    color: Colors.white,
    child: Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage("images/food1.png"),width: double.infinity,fit: BoxFit.cover,height: 200,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fried Chicken Unlimited",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 2,),
                  Row(
                    children: [
                      Text('Price: ',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                      ),
                      Text('250',maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.orange),),
                    ],
                  ),
                  Bbutton(press: (){}, lname: 'Order Now'),
                ],
              ),
            )

          ],
        ),

      ],
    ),
  );

}
