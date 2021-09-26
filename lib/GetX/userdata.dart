import 'package:bijack/main.dart';
import 'package:bijack/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:getX/loginpage.dart';

// import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  final userdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("       GeeksforGeeks"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.blue,
        elevation: 60.0,
        leading: IconButton(
          icon: Icon(Icons.navigate_before),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        brightness: Brightness.dark,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "USER DATA",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "NAME : ${userdata.read('username')}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                userdata.write('isLogged', false);
                userdata.remove('username');
                Get.offAll(SplashScreen());
              },
              child: Text("LOGOUT"),
            )
          ],
        ),
      ),
    );
  }
}
