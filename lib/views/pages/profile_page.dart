import 'package:flutter/material.dart';
import 'package:recap/data/notifires.dart';
import 'package:recap/views/welcom_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          selectedPageNotifire.value = 0;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return WelcomePage();
              },
            ),
          );
        },
        icon: Icon(Icons.logout),
      ),
    );
  }
}
