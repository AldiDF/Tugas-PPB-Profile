import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget text(String s, double size, FontWeight weight, Color color) {
    return Text(
      s,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
        fontFamily: "sans-serif",
      ),
    );
  }

  Widget topSection() {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/cover.jpg').image,
            ),
          ),
        ),

        Positioned(
          bottom: -75,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/profile.jpg').image,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget profileInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 80, bottom: 16),
      child: Column(
        children: [
          text('Aldi Daffa Arisyi', 24, FontWeight.bold, Colors.black),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mail,
                color: const Color.fromARGB(255, 49, 49, 49),
                size: 16,
              ),
              SizedBox(width: 5),
              text('aldidaffaarisyi@gmail.com', 16, FontWeight.w400, Colors.grey),
            ],
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.school,
                color: const Color.fromARGB(255, 49, 49, 49),
                size: 16,
              ),
              SizedBox(width: 5),
              text('Universitas Mulawarman', 16, FontWeight.w400, Colors.grey),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: const Color.fromARGB(255, 49, 49, 49),
                size: 16,
              ),
              SizedBox(width: 5),
              text('Samarinda', 16, FontWeight.w400, Colors.grey),
            ],
          ),
        ],
      ),
    );
  }

  Widget followInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              text('150', 20, FontWeight.bold, Colors.black),
              text('Followers', 16, FontWeight.w400, Colors.grey),
            ],
          ),

          Column(
            children: [
              text('200', 20, FontWeight.bold, Colors.black),
              text('Following', 16, FontWeight.w400, Colors.grey),
            ],
          ),

          Column(
            children: [
              text('50', 20, FontWeight.bold, Colors.black),
              text('Likes', 16, FontWeight.w400, Colors.grey),
            ],
          ),
        ],
      ),
    );
  }

  Widget actionButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 155, 222, 249),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: text('Follow', 16, FontWeight.bold, const Color.fromARGB(255, 56, 56, 56)),
            ),
          ),

          SizedBox(width: 20),

          Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 155, 222, 249),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: text('Message', 16, FontWeight.bold, const Color.fromARGB(255, 56, 56, 56)),
            ),
          ),
        ],
      )
    );
  }

  Widget headerPostSection(){
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.grid_view, color: Colors.black),
              SizedBox(width: 20),
              Icon(Icons.favorite, color: Colors.grey),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Colors.grey),
        ]
      ),
    );
  }

  Widget rowPost(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 110,
          height: 195.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/post1.jpg').image,
            ),
          ),
        ),
        Container(
          width: 110,
          height: 195.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/post2.jpg').image,
            ),
          ),
        ),
        Container(
          width: 110,
          height: 195.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/post3.jpg').image,
            ),
          ),
        ),
      ],
    );
  }

  Widget postSection(){
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
      child: Column(
        children:[
          for(int i = 0; i < 10; i++) ...[
            rowPost(),
            SizedBox(height: 10),
          ]
        ]
      ),
    );
  }

  Widget footerSection(){
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 155, 222, 249),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Icon(Icons.home, size: 30, color: Colors.black),

              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(Icons.search, size: 30, color: Colors.black),
              ),

              SizedBox(width: 50), // Space for the floating action button
              Icon(Icons.message, size: 30, color: Colors.black),
              Icon(Icons.person, size: 30, color: Colors.black),
            ]
          )
        ),

        Positioned(
          top: -20,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(Icons.add, size: 40, color: Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back, color: Colors.black),
            text('Aldi Daffa Arisyi', 20, FontWeight.bold, Colors.black),
            Icon(Icons.more_horiz, color: Colors.black),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 155, 222, 249),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            topSection(), 
            profileInfo(), 
            followInfo(), 
            actionButton(),
            headerPostSection(),
            postSection(),
          ]
        ),
      ),

      bottomNavigationBar: footerSection()
    );
  }
}
