import 'package:flutter/material.dart';
import 'package:groupproject/view/Body.dart';
import 'package:groupproject/view/Payment.dart';

class Singin extends StatefulWidget {
  const Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  TextEditingController emailcontrolar=TextEditingController();
  TextEditingController passcontrolar= TextEditingController();
  bool valueChek=false;
  String email="1";
  String pass ="2";

  var dialog = AlertDialog(
    title: Text("Please fill in gaph"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC4E130 ) ,
      body: SingleChildScrollView(

        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Text("Sing In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 30,),
              SizedBox(
                width: 250,height: 50,
                child: TextField(
                  controller: emailcontrolar,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white,),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                ),
              ),
              SizedBox(height: 5,),
              SizedBox(
                width: 250,height: 50,
                child: TextField(
                  controller: passcontrolar,
                  decoration: InputDecoration(

                    enabled: true,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white,),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)
                    ),


                  ),
                ),),

              SizedBox(height: 5,),
              SizedBox(
                width: 260,
                child:
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.red,
//hoverColor: Colors.pink,
                        focusColor: Colors.white,
                        activeColor: Colors.white,
                        value: valueChek, onChanged: (value){
                          setState(() {
                            valueChek=value!;
                          });
                        }),
                    Text("Remember",style: TextStyle(color: Colors.black,),),
                    SizedBox(
                      width: 30,
                    ),
                    Text("Forget Password?",style: TextStyle(color: Colors.white,),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 200,height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    if(emailcontrolar.text==email && passcontrolar.text==pass){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Body()));
                    }else{
                      showDialog(context: context, builder: (context)=>dialog);
                    }
                  },
                  child: Text("Sing In",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                )
                ),
                ),
              ),
              SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 260,
                    child: Row(
                      children: [

                        Text("Don`t have Account?",style: TextStyle(color: Colors.white,),),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Create Account",style: TextStyle(color: Colors.red,),),
                      ],
                    ),
                  ),
                ],
              ),
            ],),
        ),
      ),
    );;
  }
}
