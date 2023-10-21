import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
String? dropdownvalue;
String? dropdownyear;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC4E130 ) ,
      appBar: AppBar(

        backgroundColor: Color(0xffC4E130 ) ,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        title: Text("Account/Payment",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          Icon(Icons.circle,color: Colors.black,size: 15,),
          SizedBox(width: 5,),

          Icon(Icons.circle,color: Colors.black,size: 15,),
          SizedBox(width: 5,),
          Icon(Icons.circle,color: Colors.black,size: 15,),
          SizedBox(width: 5,),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape:
                   RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                   ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
              mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 55,
                                height: 32,
                                child: Card(
                                  color: Colors.redAccent,
                                  child: Center(
                                    child: Text("CARD",style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        Text("  3567 55437 9080 5600",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        Text("   Card number",style: TextStyle(color: Colors.black,fontSize: 15),),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("   Raju",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              Text("   Cardholder",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

                            ],
                          ),
SizedBox(width: 100,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("05/20",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              Text("valid",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

                            ],
                          )
                        ],),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Add new Card",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white,fontSize: 20),
                      decoration: InputDecoration(

                        enabled: true,
                focusColor: Colors.red,
                        // hintText: "Cardholder name",
                        labelText: "Cardholder",
                        labelStyle: TextStyle(color: Colors.black)
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white,fontSize: 20),
                      decoration: InputDecoration(

                    focusColor: Colors.black,
                        hoverColor: Colors.white,
                        // hintText: "Cardholder name",
                          labelText: "Card number",
                          labelStyle: TextStyle(color: Colors.black)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DropdownButton(
                        hint: Text("Date",style: TextStyle(color: Colors.white),),
                          value:dropdownvalue,
                          icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                          isDense: false,
                          menuMaxHeight: 200,
                          items:[
                            DropdownMenuItem(child: Text("1"),value: "1",),
                            DropdownMenuItem(child: Text("2"),value: "2",),
                            DropdownMenuItem(child: Text("3"),value: "3",),
                            DropdownMenuItem(child: Text("4"),value: "4",),
                            DropdownMenuItem(child: Text("5"),value: "5",),
                            DropdownMenuItem(child: Text("6"),value: "6",),
                            DropdownMenuItem(child: Text("7"),value: "7",),
                            DropdownMenuItem(child: Text("8"),value: "8",),
                            DropdownMenuItem(child: Text("9"),value: "9",),
                            DropdownMenuItem(child: Text("10"),value: "10",),
                            DropdownMenuItem(child: Text("11"),value: "11",),
                            DropdownMenuItem(child: Text("12"),value: "12",),
                            DropdownMenuItem(child: Text("13"),value: "13",),
                            DropdownMenuItem(child: Text("14"),value: "14",),
                            DropdownMenuItem(child: Text("15"),value: "15",),
                            DropdownMenuItem(child: Text("16"),value: "16",),
                            DropdownMenuItem(child: Text("17"),value: "17",),
                            DropdownMenuItem(child: Text("18"),value: "18",),
                            DropdownMenuItem(child: Text("19"),value: "19",),
                            DropdownMenuItem(child: Text("20"),value: "20",),
                            DropdownMenuItem(child: Text("21"),value: "21",),
                            DropdownMenuItem(child: Text("22"),value: "22",),
                            DropdownMenuItem(child: Text("23"),value: "23",),
                            DropdownMenuItem(child: Text("24"),value: "24",),
                            DropdownMenuItem(child: Text("25"),value: "25",),
                            DropdownMenuItem(child: Text("26"),value: "26",),
                            DropdownMenuItem(child: Text("27"),value: "27",),
                            DropdownMenuItem(child: Text("28"),value: "28",),
                            DropdownMenuItem(child: Text("29"),value: "29",),
                            DropdownMenuItem(child: Text("30"),value: "30",),
                            DropdownMenuItem(child: Text("31"),value: "31",),


                          ],
                          onChanged: (String?value){
                          setState(() {
                            dropdownvalue=value;
                          });
                          }),
                      DropdownButton(
                          hint: Text("Year",style: TextStyle(color: Colors.white),),
                          value:dropdownyear,
                          icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                          elevation: 20,
                          dropdownColor: Colors.white,
                          menuMaxHeight: 200,
                          alignment: Alignment.center,
                          items:[
                            DropdownMenuItem(child: Text("2020"),value: "2020",),
                            DropdownMenuItem(child: Text("2021"),value: "2021",),
                            DropdownMenuItem(child: Text("2022"),value: "2022",),
                            DropdownMenuItem(child: Text("2023"),value: "2023",),
                            DropdownMenuItem(child: Text("2024"),value: "2024",),
                            DropdownMenuItem(child: Text("2025"),value: "2025",),
                            DropdownMenuItem(child: Text("2026"),value: "2026",),
                            DropdownMenuItem(child: Text("2027"),value: "2027",),
                            DropdownMenuItem(child: Text("2028"),value: "2028",),
                            DropdownMenuItem(child: Text("2029"),value: "2029",),
                            DropdownMenuItem(child: Text("2030"),value: "2030",),

                          ],
                          onChanged: (String?value){
                            setState(() {
                              dropdownyear=value;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,height: 50,
                      child: ElevatedButton(
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Singin()));
                        },
                        child: Text("Add now",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
