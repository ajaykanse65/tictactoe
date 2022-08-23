import 'package:flutter/material.dart';
import 'package:juugad/responsive/responsive.dart';
import 'package:juugad/widget/custom_button.dart';
import 'package:juugad/widget/custom_text.dart';
import 'package:juugad/widget/custom_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({Key? key}) : super(key: key);

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameidController = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _nameController.dispose();
    _gameidController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(shadows: [
                Shadow(
                    blurRadius: 40,
                    color: Colors.blue
                )
              ], text: 'Join Room', fontSize: 70,),
              SizedBox(height: size.height*0.08,),
              CustomTextFeild(controller: _nameController, hintText: 'Enter your name',),
              const SizedBox(height: 20,),
              CustomTextFeild(controller: _gameidController, hintText: 'Enter game Id',),
              SizedBox(height: size.height*0.045,),
              CustomButton(onTap: (){}, text: "Join",)
            ],
          ),
        ),
      ),
    );
  }
}
