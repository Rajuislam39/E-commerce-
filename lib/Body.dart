import 'package:flutter/material.dart';
import 'package:groupproject/Account.dart';
import 'package:groupproject/Filters.dart';
import 'package:groupproject/Payment.dart';
import 'package:groupproject/Singin.dart';
import 'package:groupproject/Status.dart';
import 'package:groupproject/Topup.dart';

import 'Catagory/Catagory.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC4E130 ) ,
      body: Stack(
        children: [
          Offstage(
              offstage:index!=0,
              child:TickerMode(
                  enabled:index==0,
                  child:MaterialApp(
                    debugShowCheckedModeBanner: false,
                      home:Catagory(),
                  )
              )
          ),
          Offstage(
              offstage:index!=1,
              child:TickerMode(
                  enabled:index==1,
                  child:MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home:Filters(),
                  )
              )
          ),
          Offstage(
              offstage:index!=2,
              child:TickerMode(
                  enabled:index==2,
                  child:MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home:Account(),
                  )
              )
          ),
          Offstage(
              offstage:index!=3,
              child:TickerMode(
                  enabled:index==3,
                  child:MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home:Topup(),
                  )
              )
          ),
          Offstage(
              offstage:index!=4,
              child:TickerMode(
                  enabled:index==4,
                  child:MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home:Status(),
                  )
              )
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF084A76),
        unselectedLabelStyle: TextStyle(
          color: Colors.white, fontSize: 14
        ),
        onTap: (int index){
          setState(() {
            this.index=index;
          });
        },

        fixedColor: Colors.red,
       //selectedItemColor: Colors.red,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category,color: Colors.black,),label: "Catagory"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,),label: "Shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard,color: Colors.black,),label: "Card"),
          BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.black,),label: "Menu"),
        ],
      ),
    );
  }
}
