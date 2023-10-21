import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<Map<String,dynamic>> data =[
    {"img": "Images/juice.png","name":"Juice"},
    {"img": "Images/coffee.png","name":"Coffee"},
    {"img": "Images/food.png","name":"Fast Food"},

    {"img": "Images/honey.png","name":"Honey water"},
    {"img": "Images/wine.png","name":"Wine"},
    {"img": "Images/juice.png","name":"Juice"},
    {"img": "Images/coffee.png","name":"Coffee"},
    {"img": "Images/food.png","name":"Fast Food"},

    {"img": "Images/honey.png","name":"Honey water"},
    {"img": "Images/wine.png","name":"Wine"},


  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
          "I like ",
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
        body:
        Stack(
          children: [
            Positioned(
              left: 50,top: 40,
              child: CircleAvatar(
                maxRadius: 45,
                backgroundImage:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg/220px-Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg"),
              ),
            ),
            Positioned(left: 180,top: 40,
                child: Column(
                  children: [
                    Text("Raju islam",style: TextStyle(color: Colors.white,fontSize: 30),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Dhaka",style: TextStyle(color: Colors.white,),),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 150),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.white,
                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_outline,color: Colors.redAccent,size: 35,),
                          Text("I like",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35,),)
                        ],
                      ),
                      GridView.builder(shrinkWrap: true,

                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: data.length ,
                          itemBuilder: (context,index){
                            return
                              Column(
                                children: [
                                  Card(
                                      shape: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image.asset(data[index]["img"],width: 100,height: 100,fit: BoxFit.fill,)),

                                ],
                              );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

      );
  }
}

