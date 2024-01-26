

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC4E130),
      appBar: AppBar(
        backgroundColor: Color(0xffC4E130),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: Text(
          "I like",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Images/drone.png"),
            Text("Your packeage with orders",style: TextStyle(color: Colors.white,fontSize: 20),),
           SizedBox(height: 5,),
            Text("arrived at the office",style: TextStyle(color: Colors.white,fontSize: 20),),

            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Card(
                color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Status:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),),
                          Text("In the office",style: TextStyle(color: Colors.black,),),

                          Text("Pick up the package within 4 days",style: TextStyle(color: Colors.black,),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
