import 'package:flutter/material.dart';
import 'package:recap/data/notifires.dart';
import 'package:recap/views/pages/profile_page.dart';
import 'package:recap/views/pages/setting_page.dart';
import 'package:recap/views/widgets/navbar_widgets.dart';

import 'pages/home_page.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello There"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.teal,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            onPressed: () {
              pageModeNotifire.value = !pageModeNotifire.value;
            },
            icon: pageModeNotifire.value == true
                ? Icon(Icons.dark_mode)
                : Icon(Icons.light_mode),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                //pushReplacement can be used at the time when we are required to have forward movemetn in app no any backward movement
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifire,
        builder: (context, value, child) {
          return pages.elementAt(selectedPageNotifire.value);
        },
      ),
      bottomNavigationBar: NavbarWidgets(),
    );
  }
}
