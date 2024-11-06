import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: const TabBarView(
          children: [
            HomePage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.amber,
          color: Colors.white,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("Image/685850.jpg"),
            radius: 50.0,
          ),
          Text(
            'Muhammad Naufal Rafasyah',
            style: GoogleFonts.pacifico(
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.5,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Nongkrong bos!',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.5,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            color: Colors.white,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Icon(
                    Icons.phone_android,
                    color: Colors.teal,
                  ),
                ),
                Text(
                  '085190007114',
                  style: TextStyle(color: Colors.teal, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            color: Colors.white,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                ),
                Text(
                  'rafasyah7114@gmail.com',
                  style: TextStyle(color: Colors.teal, fontSize: 20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfo({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 300,
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFF7ABA78),
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF7ABA78),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Image(
      image: AssetImage("Image/logo umb.jpg"),
    ));
  }
}