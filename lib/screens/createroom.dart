import 'package:flutter/material.dart';
import 'package:juugad/responsive/responsive.dart';
import 'package:juugad/widget/custom_button.dart';
import 'package:juugad/widget/custom_text.dart';
import 'package:juugad/widget/custom_text_field.dart';

class CreateRoom extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoom({Key? key}) : super(key: key);

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _nameController.dispose();
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
             ], text: 'Create Room', fontSize: 70,),
              SizedBox(height: size.height*0.08,),
              CustomTextFeild(controller: _nameController, hintText: 'Enter your name',),
              SizedBox(height: size.height*0.045,),
              CustomButton(onTap: (){}, text: "Create",)
            ],
          ),
        ),
      ),
    );
  }
}
