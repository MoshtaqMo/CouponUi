import 'package:couponui/constants/part.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Text("Coupon",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.notification_add)),
                      CircleAvatar(),
                    ],
                    
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 30,
                  width: 270,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: Row(
                    spacing: (10),
                    children: [Icon(Icons.search,size: 17,),
                    
                    Text("Serach here")],),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.square,size: 10,),
                        Icon(Icons.square,size: 10,color: Colors.grey,),
                      ],
                    ), Row(
                      children: [
                        Icon(Icons.square,size: 10,color: Colors.grey,),
                        Icon(Icons.square,size: 10),
                      ],
                    ),
        
                    
                  ],
                )
              ],),
              Column(
                
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              spacing: 10,
                              children: [Part(),Part(),Part(),Part(),Part(),],),
                            Column(
                              spacing: 10,
                              
                              children: [
                              SizedBox(height: 50,),
                              Part(),Part(),Part(),Part(),Part(),],),
                          ],
                        )
                      ],
                    )
        
            ],
          ),
        )),
      ),
    );
  }
}