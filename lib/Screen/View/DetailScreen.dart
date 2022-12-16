import 'package:authorapp/Firebase/firebase.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  
  TextEditingController txtname = TextEditingController();
  TextEditingController txtlink = TextEditingController();
  TextEditingController txtAname = TextEditingController();
  TextEditingController txtAauthor = TextEditingController();
  TextEditingController txtAbook = TextEditingController();
  TextEditingController txtrating = TextEditingController();
  TextEditingController txtPyear = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Details",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xffe7e7e7),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TextField(
                controller: txtname,
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(Icons.book),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: txtlink,
                decoration: InputDecoration(
                  hintText: "Image Link",
                  prefixIcon: Icon(Icons.image),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: txtAname,
                decoration: InputDecoration(
                  hintText: "Author Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: txtAauthor,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "About Author",
                  errorMaxLines: 3,
                  prefixIcon: Icon(Icons.edit),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: txtAbook,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "About Book",
                  prefixIcon: Icon(Icons.menu_book_outlined),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: txtrating,
                decoration: InputDecoration(
                  hintText: "Rating",
                  prefixIcon: Icon(Icons.star),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: txtPyear,
                decoration: InputDecoration(
                  hintText: "Publish Year",
                  prefixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){

              insertData(txtname.text, txtlink.text, txtAname.text, txtAauthor.text, txtAbook.text, txtrating.text, txtPyear.text);

            }, child: Text("Finish"))
          ],
        ),
      ),
    ));
  }
}
