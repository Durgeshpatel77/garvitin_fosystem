import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height*1,
              width: width*1,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 100),
                    height:height*0.661,
                    width: width*1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
                      color: Colors.white,
                    ),
                    child: Container(
                      color: Colors.red,
                        height: 300,
                        width: 300,
                        child: Image.asset("assets/images/Logo5.png",fit: BoxFit.fill,)),),
                  Container(
                    height: height*0.33,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                      color: Colors.white,
        
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 520),
                child: Container(
                  height: 400,
                  width: 260,
                 // color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Manage Your",style: TextStyle(color: Colors.black,fontSize: 40),),
                      Text("Project",style: TextStyle(color: Colors.black,fontSize: 40),),
                      SizedBox(height: 10,),
                      Text("Keep your business organized in just",style: TextStyle(fontSize: 13),),
                      SizedBox(height: 5,),
                      Text("one application",style: TextStyle(fontSize: 13),),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black
                        ),
                        child: Center(child: Text("Let's Start",style: TextStyle(fontSize: 16 ,color: Colors.white),),),
                      )
                    ],

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
