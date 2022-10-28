import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.purple.shade800,
        leading: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(Icons.person_outline_rounded,color: Colors.purple.shade800,),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 5,
              child:Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.flag,color: Colors.orange,),

            ) ,)
          ],
        ),
      ) ,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.orange,
        )
      ),
    );
  }


}