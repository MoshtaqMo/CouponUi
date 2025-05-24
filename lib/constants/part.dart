import 'package:flutter/material.dart';

class Part extends StatelessWidget {
  const Part({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, "page");
      },
      child: Container(
        padding: EdgeInsets.all(9),
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 244, 233, 192),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 219, 179, 177),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Title",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                ),
              ],
            ),
          
      
          SizedBox(height: 20,),
          Text("Marka Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          SizedBox(height: 10,),
          Text("Exclusive Deal: 20% off for new users")
      
        ],),
      
      ),
    );
  }
}