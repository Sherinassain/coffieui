import 'package:coffieui/coffie_container.dart';
import 'package:coffieui/coffie_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  leading: Icon(Icons.menu,color: Colors.white,),
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:8),
              child: Icon(Icons.person,color: Colors.white,),
            ),
          ],
        elevation: 0,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Find the best coffie\nfor you',style: GoogleFonts.bebasNeue(fontSize: 36))
        ),
        SizedBox(height: 17,),
       Padding(
         padding: const EdgeInsets.all(14),
         child: TextField(decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600)),
         enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600)),
         hintText: 'Fid your coffiee.....',hintStyle: TextStyle(fontWeight: FontWeight.bold),
         prefixIcon: Icon(Icons.search),
         ),),
       ),
       SizedBox(height: 18,),
       //coffie items
       Container(
        height: 50,
       child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Coffie_items(itemname: 'Cappucino', color: Colors.orange),
          Coffie_items(itemname: 'Latte', color: Colors.white),
          Coffie_items(itemname: 'Black', color: Colors.white),
          Coffie_items(itemname: 'Green tea', color: Colors.white),
          Coffie_items(itemname: 'Mint tea', color: Colors.white),
          Coffie_items(itemname: 'Cardomen tea', color: Colors.white),
       
       ],),
       ),
       SizedBox(height: 5,),
       Expanded(child: ListView(
    scrollDirection: Axis.horizontal,
        children: [
       //Coffie containers
       Coffie_container(imagepaths: 'assets/images/regine-tholen-1c0TH0XHFuA-unsplash.jpg', heading: 'Latte', rate: '4.20'),
       Coffie_container(imagepaths: 'assets/images/regine-tholen-1c0TH0XHFuA-unsplash.jpg', heading: 'Green Flavour', rate: '8.20'),
       Coffie_container(imagepaths: 'assets/images/regine-tholen-1c0TH0XHFuA-unsplash.jpg', heading: 'Bdam Flavour', rate: '5.25'),
       Coffie_container(imagepaths: 'assets/images/regine-tholen-1c0TH0XHFuA-unsplash.jpg', heading: 'Choclate Flavour', rate: '6.8'),
       Coffie_container(imagepaths: 'assets/images/regine-tholen-1c0TH0XHFuA-unsplash.jpg', heading: 'Cascus Flavour', rate: '7.8'),
       ],))
      ],),
   bottomNavigationBar: BottomNavigationBar(
    unselectedItemColor: Colors.white,
    selectedItemColor: Colors.deepPurple,
    items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
   BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'Likes'),
   BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
   ]),
    );
  }
}
