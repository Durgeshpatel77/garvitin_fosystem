import 'package:flutter/material.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  TextEditingController findTaskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<List<String>> dates = [
      ["Fri", "16"],
      ["Sat", "17"],
      ["Sun", "18"],
      ["Mon", "19"],
      ["Tue", "20"],
      ["Wed", "21"],
      ["Thu", "22"],
    ];

    return Scaffold(
      backgroundColor: Color(0xfffaf4cb),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 50, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://attic.sh/1lq04nip7l5juhm53xzbzegibhm7",
                    ),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Mr. Elon",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "@me.elon",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Icon(
                          Icons.notifications_none,
                          size: 20,
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
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: findTaskController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfffdfdfd),
                        hintText: "Find Your Task...",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: Color(0xff80bfa3),
                    radius: 24,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 115,
                child: ListView.builder(
                  itemCount: dates.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    bool isSunday = index == 2;
                    return Container(
                      margin: EdgeInsets.only(right: 13),
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff80bfa3),
                        ),
                        borderRadius: BorderRadius.circular(40),
                        color: isSunday ? Color(0xff5e987e) : Colors.transparent, // Apply red color for Sunday

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dates[index][0],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            dates[index][1],
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Project Summary",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 13),
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff5c967c),
                              ),
                            ),
                            Positioned(
                              top: -310,
                              right: 27,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: CircleAvatar(
                                  radius: 300,
                                  backgroundColor: Color(0xff72b094),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Color(0xff5c967c),
                                ),
                                child: Icon(
                                  Icons.edit_square,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 110,
                                ),
                                Text(
                                  "18",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '   In progress\n   project',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 13),
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff5e3550),
                              ),
                            ),
                            Positioned(
                              top: -310,
                              right: 27,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: CircleAvatar(
                                  radius: 300,
                                  backgroundColor: Color(0xff714562),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Color(0xff5e3550),
                                ),
                                child: Icon(
                                  Icons.exit_to_app_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 110,
                                ),
                                Text(
                                  "42",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '   Completed\n   project',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "In Proccess",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    width: width * 0.46,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                width: width * 1,
                //color: Colors.blue,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 7,
                      // color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xff5c967c),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularProgressIndicator(
                          value: 0.55,
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xff5c967c)),
                        ),
                        Positioned(
                          child: Text(
                            "55%",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5c967c),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Meta Work Project",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "18 Oct 2022",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.28,
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: width * 1,
                //color: Colors.blue,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 7,
                      // color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xff5e3550),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularProgressIndicator(
                          value: 0.78,
                          backgroundColor: Colors.grey[300],
                          valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xff5e3550)),
                        ),
                        Positioned(
                          child: Text(
                            "78%",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5e3550),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3D Design",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "8 Oct 2022",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.45,
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
