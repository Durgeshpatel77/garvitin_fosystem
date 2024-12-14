import 'package:flutter/material.dart';

class ProductivityPage extends StatefulWidget {
  const ProductivityPage({super.key});

  @override
  State<ProductivityPage> createState() => _ProductivityPageState();
}

class _ProductivityPageState extends State<ProductivityPage> {
  // Overall tasks completed and planned are displayed at the top
  int totalTasks = 41;
  int completedTasks = 8;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfffaf4cb),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 50, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back_ios_new_sharp),
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Icon(
                        Icons.notifications_none,
                        size: 25,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff9bd7bc),
                        radius: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Productivity",
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: width * 0.5,
                ),
                Icon(
                  Icons.more_horiz,
                  size: 32,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 330,
              width: width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children:[
                    Row(
                      children: [
                        Text("Overall",style: TextStyle(fontSize: 18),),
                        SizedBox(width: width*0.28,),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xff9bd7bc),
                        ),
                        SizedBox(width: 5,),
                        Text("Planned",style: TextStyle(fontSize: 14),),
                         SizedBox(width: 5,),
                         CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(width: 5,),
                        Text("Complet",style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text("41",style: TextStyle(fontSize: 35),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 250,top: 80),
                       child: Text("08/10",style: TextStyle(fontSize: 10) ,),
                     ),

                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDayColumn("Su", 2),
                      _buildDayColumn("Mo", 4),
                      _buildDayColumn("Tu", 5),
                      _buildDayColumn("We", 1),
                      _buildDayColumn("Th", 3),
                      _buildDayColumn("Fr", 8),
                      _buildDayColumn("Sa", 6),
                    ],
                  ),
                ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Subtasks",style: TextStyle(fontSize: 22),),
                SizedBox(width: width*0.6,),
                Icon(Icons.more_horiz,size: 32,)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 300,
              width: width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width:10,),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff9bd7bc),
                        child: Icon(Icons.verified_user,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("App Design",style: TextStyle(fontSize: 16),),
                      SizedBox(width: width*0.4,),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage("https://static.tiktokemoji.com/202411/04/u1GVxUlX.webp"),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width:10,),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff9bd7bc),
                        child: Icon(Icons.verified_user,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("UI/UX",style: TextStyle(fontSize: 16),),
                      SizedBox(width: width*0.27,),
                      CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage("https://static.tiktokemoji.com/202411/04/u1GVxUlX.webp"),
                         ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                          radius: 20,
                         backgroundImage: NetworkImage("https://attic.sh/63wrkyv58146jp34aucdh68f6b6u"),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                          radius: 20,
                        backgroundImage: NetworkImage("https://attic.sh/3jwfxopq38l57vzoe789ni7hvtuf"),
                       ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width:10,),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff9bd7bc),
                        child: Icon(Icons.verified_user,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("3D Animation",style: TextStyle(fontSize: 16),),
                      SizedBox(width: width*0.35,),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/902/25/png-transparent-man-office-worker-light-skin-tone-emoji-icon.png"),
                      ),
                    ],
                  ),

                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width:10,),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff9bd7bc),
                        child: Icon(Icons.verified_user,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Landing Page",style: TextStyle(fontSize: 16),),
                      SizedBox(width: width*0.24,),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/902/25/png-transparent-man-office-worker-light-skin-tone-emoji-icon.png"),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/349/72/png-transparent-woman-office-worker-light-skin-tone-emoji-icon.png"),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Container(
                        height: 50,
                      width: 260,
                      child: Center(child: Text("Add Subtasks",style: TextStyle(fontSize: 19,color: Colors.white),),),
                        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(25)),
                    ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 27,
                        child: Icon(Icons.add,size: 28,color: Colors.white,),
                      )
                  ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDayColumn(String day, int tasksCompleted) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 30,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Container(
          width: 30,
          height: tasksCompleted * 10,
          decoration: BoxDecoration(
            color: Colors.green[400],
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Text(day),
      ],
    );
  }
}