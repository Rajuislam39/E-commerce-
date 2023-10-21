import 'package:flutter/material.dart';

class Buynow extends StatefulWidget {
  const Buynow({super.key});

  @override
  State<Buynow> createState() => _BuynowState();
}

class _BuynowState extends State<Buynow> {
  List<Map<String,dynamic>> data =[
    {"img": "Images/juice.png","name":"Juice"},
    {"img": "Images/coffee.png","name":"Coffee"},
    {"img": "Images/food.png","name":"Fast Food"},

    {"img": "Images/honey.png","name":"Honey water"},
    {"img": "Images/wine.png","name":"Wine"},
    {"img": "Images/dot.png","name":"Others"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height:double.infinity,
            color: Colors.white,
          ),
          Container(
            width: double.infinity,
            height:300,
           color:  Color(0xffC4E130),
          ),
          Positioned(top: 260,left: 30,right: 30,bottom: 30,
            child: SizedBox(
              width: 300,
              height:300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text("Linden honey",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                             SizedBox(height: 10,),
                              Text("Specification: 300 ml",style: TextStyle(color: Colors.black),),

                            ],
                          ),
                          Icon(Icons.favorite_outline,color: Colors.redAccent,size: 30,)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("\$6",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 30),),
                          SizedBox(
                            width: 120,height: 45,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              color: Colors.deepOrange,
                              child: Center(
                                child: Text("Buy now",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.shopping_bag_outlined,color: Colors.deepOrange,size: 60,),
                          SizedBox(width: 10,),
                          Text("Description",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 35),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Linden honey is a monofloral honey that's produced in America,"),
                      SizedBox(height: 5,),
                      Text("This honey is essentially the same in all of"),
                      SizedBox(height: 15,),
                      Divider(color: Color(0xffC4E130),),
                      SizedBox(height: 10,),
                      Text("Similar products",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),

                      Container(
                        height: 250,
                        child: ListView.builder(
                            clipBehavior: Clip.antiAlias,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: data.length,
                            itemBuilder: (context,index){
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(width: 200,height: 200,
                                    color: Color(0xffC4E130),
                                    child: Image.asset(data[index]["img"],width: 80,height: 80,fit: BoxFit.fill,)),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
