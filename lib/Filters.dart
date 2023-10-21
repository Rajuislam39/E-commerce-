import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  SfRangeValues _values = SfRangeValues( 40.0, 80.0);

  List<Map<String,dynamic>> data =[
    {"img": "Images/juice.png","name":"Juice"},
    {"img": "Images/coffee.png","name":"Coffee"},
    {"img": "Images/food.png","name":"Fast Food"},

    {"img": "Images/honey.png","name":"Honey water"},
    {"img": "Images/wine.png","name":"Wine"},
    {"img": "Images/dot.png","name":"Others"},
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
          "Filters",
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
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 25),
              child: Text("Catagory",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Expanded(
              child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            minRadius: 50,
                            backgroundColor: Colors.white,
                            child: Image.asset(data[index]["img"],width: 50,height: 50,fit: BoxFit.fill,),
                          ),
                          Text(data[index]["name"].toString(),style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    );
                  }),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                          CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.yellowAccent,
                          ),

                        ],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                          CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.purple,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.indigo,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.pink,
                          ),

                        ],),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.white,
                  child:
                  SfRangeSlider(
                    activeColor: Color(0xffC4E130),
                    inactiveColor: Colors.black12,
                    min: 0.0,
                    max: 100.0,
                    values: _values,
                    interval: 20,
                    showTicks: true,
                    showLabels: true,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    onChanged: (SfRangeValues values) {
                      setState(() {
                        _values = values;
                      });
                    },
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
