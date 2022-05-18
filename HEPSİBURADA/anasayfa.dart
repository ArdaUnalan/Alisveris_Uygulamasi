import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu_sharp,
                        size: 45, color: Colors.orangeAccent[400]),
                    buildPP(),
                    //SizedBox(width: 256),
                    Icon(Icons.shopping_cart_outlined,
                        size: 45, color: Colors.orangeAccent[400]),
                  ],
                ),
                SizedBox(height: 20),
                buildSearchQuestion(),
                SizedBox(height: 16),
                buildSearchBox(),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildFastBox(),
                      SizedBox(width: 16),
                      buildFastBox2(),
                      SizedBox(width: 16),
                      buildFastBox3(),
                      SizedBox(width: 16),
                      buildFastBox4(),
                      SizedBox(width: 16),
                      buildFastBox5(),
                      SizedBox(width: 16),
                      buildFastBox6(),
                    ],
                  ),
                ),
                SizedBox(height: 27),
                buildSutler(),
                SizedBox(height: 15),
                buildMore(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildMore() {
    return Container(
      margin: EdgeInsets.only(left: 88),
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 35),
      height: 40,
      width: 200,
      child: Text(
        "Daha Fazla Göster ...",
        style: GoogleFonts.roboto(
          color: Colors.grey[850],
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Color.fromARGB(255, 233, 233, 233),
      ),
    );
  }

  Column buildSutler() {
    return Column(
      children: [
        Row(
          children: [
            Image.asset("assets/st2.PNG"),
            SizedBox(width: 26),
            Image.asset("assets/st3.PNG"),
          ],
        ),
        Row(
          children: [
            Image.asset("assets/car.PNG"),
            SizedBox(width: 26),
            Image.asset("assets/süt.PNG"),
          ],
        ),
      ],
    );
  }

  Container buildFastBox6() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 7),
      height: 38,
      width: 89,
      child: Text(
        "Atıştırmalık",
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Color.fromARGB(255, 212, 212, 212),
      ),
    );
  }

  Container buildFastBox5() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 3),
      height: 38,
      width: 89,
      child: Text(
        "Fırın Ürünleri",
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Color.fromARGB(255, 212, 212, 212),
      ),
    );
  }

  Container buildFastBox4() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 4),
      height: 38,
      width: 105,
      child: Text(
        "Meyve & Sebze",
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Color.fromARGB(255, 212, 212, 212),
      ),
    );
  }

  Container buildFastBox3() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 14),
      height: 38,
      width: 89,
      child: Text(
        "Et & Balık",
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Color.fromARGB(255, 212, 212, 212),
      ),
    );
  }

  Container buildFastBox2() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 8),
      height: 38,
      width: 89,
      child: Text(
        "Temel Gıda",
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Color.fromARGB(255, 212, 212, 212),
      ),
    );
  }

  Container buildFastBox() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 7),
      height: 38,
      width: 89,
      child: Text(
        "Süt Ürünleri",
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.orangeAccent[400],
      ),
    );
  }

  Text buildSearchQuestion() {
    return Text(
      "Ne İstediniz ?",
      style: GoogleFonts.roboto(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  Container buildPP() {
    return Container(
      width: 78,
      height: 78,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(39),
          color: Colors.orangeAccent[400]),
      child: Icon(Icons.account_circle_outlined, size: 78, color: Colors.black),
    );
  }
}
/* Container buildPP() {
    return Container(
      width: 78,
      height: 78,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(39), color: Colors.grey[850]),
      child: Icon(Icons.account_circle_outlined,
          size: 78, color: Colors.orangeAccent[400]),
    );
  }
} */

TextField buildSearchBox() {
  return TextField(
    enabled: true,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left: 17),
      prefix: Icon(Icons.search_outlined),
      hintText: "Ürün Adı Arayın",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );
}
