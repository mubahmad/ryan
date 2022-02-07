import 'package:ryan/components/TextBox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF262626),
        title: Text(
          'تسجيل الدخول',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'AraAqeeq',
            // fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 130,
                ),
                Text(
                  'اسم المستخدم',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'AraAqeeq',
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            TextBox(
              back: AssetImage('assets/images/usertext.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 140,
                ),
                Text(
                  'رقم الهاتف',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'AraAqeeq',
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            TextBox(
              back: AssetImage('assets/images/userphone.png'),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Color(0xFFE6AC5D),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.orange.withOpacity(0.5),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                  ); //make it next page
                },
                child: Text(
                  'متابعة',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AraAqeeq',
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
