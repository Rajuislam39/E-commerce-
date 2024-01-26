import 'package:flutter/material.dart';
import 'package:groupproject/view/Payment.dart';

class Catagory extends StatefulWidget {
  Catagory({super.key});

  @override
  State<Catagory> createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
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
      backgroundColor: Color(0xffC4E130 ) ,
      appBar: AppBar(
        backgroundColor: Color(0xffC4E130 ) ,
        elevation: 0,
        title: SizedBox(width: double.infinity,
          height: 40,
          child: SearchBar(constraints: BoxConstraints(

          ),
            hintText: "Search...",

            leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
                child: Icon(Icons.search,color: Colors.black,)),
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: GridView.builder(shrinkWrap: true,
            physics: ScrollPhysics(

            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 1
        ),
            itemCount: data.length ,
            itemBuilder: (context,index){
          return
            GestureDetector(
              onTap: (){
               if(index==5){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
               }
              },
              child: Column(
              children: [
                CircleAvatar(
                  minRadius: 100,
                  backgroundColor: Colors.white,
                    child: Image.asset(data[index]["img"],width: 100,height: 100,fit: BoxFit.fill,)),
                Text(data[index]["name"].toString(),style: TextStyle(color: Colors.white,fontSize: 20),)
              ],
          ),
            );
            }),
      ),
    );
  }
}
