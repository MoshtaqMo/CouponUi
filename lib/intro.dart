import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
              ),
              color: const Color.fromARGB(255, 145, 212, 245),
              image: DecorationImage(image: AssetImage("images/logo.png"))
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Text("Coupons around \n the internet",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                 Text("Discover and save\n with the best deals\n available online.",style: TextStyle(fontSize: 20),),

                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
                    children: [
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "homepage");
            
                      }, child: Text("Get Started",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      Spacer(),

                    ],
                  ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 145, 212, 245),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(150)
                )
                
              ),
            ),
          )
        ],
      ),
    );
  }
}