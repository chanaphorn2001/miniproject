import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lab12/pages1/addproducts.dart';
import 'package:lab12/pages1/body.dart';
import 'package:lab12/pages1/constants.dart';
import 'package:lab12/pages1/editproduct.dart';
import 'package:lab12/pages1/productdetail.dart';
import 'package:flutter/material.dart';

class ShowProductUser extends StatefulWidget {
  const ShowProductUser({Key? key}) : super(key: key);

  @override
  _ShowProductUserState createState() => _ShowProductUserState();
}

class _ShowProductUserState extends State<ShowProductUser> {
  CollectionReference menu = FirebaseFirestore.instance.collection('Menu');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kBgColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Make Food",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],

          // backgroundColor: Colors.transparent,
          // elevation: 0.0,
        ),
        // drawer: Drawer(),
        body: ListView(
          children: [
            Body(),
            showlist(),
          ],
        ),
      ),
    );
  }

  Widget showlist() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('Products').snapshots(),
      // builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      builder: (context, snapshot) {
        List<Widget> listMe = [];
        if (snapshot.hasData) {
          var menu = snapshot.data;
          listMe = [
            Column(
              children: menu!.docs.map((DocumentSnapshot doc) {
                Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ListTile(
                    leading: Image.asset('image/14.png'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(id: doc.id),
                        ),
                      ).then((value) => setState(() {}));
                    },
                    title: Text(
                      '${data['product_name']}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange),
                    ),
                    subtitle: Text("ดูวิธีการทำกันเลย"),
                  ),
                );
              }).toList(),
            ),
          ];
        }
        return Center(
          child: Column(
            children: listMe,
          ),
        );
      },
    );
  }
}
