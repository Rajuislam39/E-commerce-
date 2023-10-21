import 'package:flutter/material.dart';

import 'Singin.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC4E130 ) ,
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: 60,width: 170,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),child: Center(child: Text("Buy here!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
                  ),
                ),
                Positioned(left: 60,top: 28,
                    child: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,size: 65,))
              ],
            ),
SizedBox(height: 5,),
Image.asset("Images/family.png",width: 200,height: 200,fit: BoxFit.fill,),
            SizedBox(height: 25,),

            SizedBox(
              width: 200,height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Singin()));
                },
                child: Text("Start Shopping",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
