import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
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
          "Reviews",
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
    ListView.builder(
      itemCount: 50,
        itemBuilder: (context,index){
          return
            Padding(
            padding:  EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Icon(Icons.confirmation_num_sharp)
                    ,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Raju",
                              style: TextStyle(color: Colors.black,fontSize: 30),
                            ),
                            SizedBox(width: 200,),
                            Icon(Icons.star,color: Colors.redAccent,),
                            Icon(Icons.star,color: Colors.redAccent,),
                            Icon(Icons.star,color: Colors.redAccent,),
                            Icon(Icons.star,color: Colors.redAccent,),
                            Icon(Icons.star,color: Colors.redAccent,),
                          ],
                        ),
                        Text("Provide useful, constructive feedback."),
                        Text("Talk about a range of elements, including customer service."),

                        Text("Be detailed, specific, and honest."),
                        Text("Leave out links and personal information."),
                        Text("Keep it civil and friendly."),


                      ],
                    ),


                  ],
                ),
              ),
            ),
          );
        })
    );
  }
}
