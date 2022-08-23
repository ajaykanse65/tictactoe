import 'package:flutter/material.dart';
import 'package:juugad/responsive/responsive.dart';
import 'package:juugad/screens/createroom.dart';
import 'package:juugad/screens/join_room.dart';
import 'package:juugad/widget/custom_button.dart';

class MainMenu extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenu({Key? key}) : super(key: key);

  void createRoom(BuildContext context){
    Navigator.pushNamed(context, CreateRoom.routeName);
  }

  void joinRoom(BuildContext context){
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: () => createRoom(context), text: "Create Room"),
            const SizedBox(height: 25,),
            CustomButton(onTap: () => joinRoom(context), text: "Join Room"),
          ],
        ),
      ),
    );
  }
}
