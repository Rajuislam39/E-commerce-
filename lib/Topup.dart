import 'dart:math';

import 'package:flutter/material.dart';

class Topup extends StatefulWidget {
  const Topup({super.key});

  @override
  State<Topup> createState() => _TopupState();
}

class _TopupState extends State<Topup> {
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
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            )),
        title: Text(
          "Top Up Furpay",
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
      body: Stack(
        children: [
          Positioned(top: 135,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.redAccent,),
            ),
          ),
          Positioned(top: 135,
            right: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back_ios_new,color: Colors.redAccent,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(


              children: [

                SizedBox(
                  width: 400,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Balance",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                          Text("\$205,27",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 60,width: 100,
                          color: Colors.redAccent,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 60,width: 100,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 60,width: 100,
                          color: Colors.pink,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 60,width: 100,
                          color: Colors.black,
                        ),
                        SizedBox(width: 15,),
                        Container(
                            height: 60,width: 100,
                            color: Colors.blue
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 60,width: 100,
                          color: Colors.redAccent,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 60,width: 100,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 60,width: 100,
                          color: Colors.pink,
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 60,width: 100,
                          color: Colors.black,
                        ),
                        SizedBox(width: 15,),
                        Container(
                            height: 60,width: 100,
                            color: Colors.blue
                        ),
                        SizedBox(width: 15,),
                      ],
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Payment Method",style: TextStyle(color: Colors.white,fontSize: 30),),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white38,
                    borderRadius: BorderRadius.circular(15)
                  ),

                  child: ListTile(

                    title: Text("Mobile banking",style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: ListTile(

                    title: Text("Internet bangking",style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: ListTile(

                    title: Text("SMS banking",style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: ListTile(

                    title: Text("Pawnshop",style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                  ),
                ),
                SizedBox(height: 5,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
