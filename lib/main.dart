import 'package:flutter/material.dart';
import 'package:juugad/screens/createroom.dart';
import 'package:juugad/screens/join_room.dart';
import 'package:juugad/screens/main_menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        //scaffoldBackgroundColor: bgColor
      ),
      routes: {
        MainMenu.routeName: (context) => const MainMenu(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoom.routeName: (context) => const CreateRoom(),
      },
      initialRoute: MainMenu.routeName,
    );
  }
}


