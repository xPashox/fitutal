import 'package:fitutal/model/user.dart';
import 'package:fitutal/utils/profile_widget.dart';
import 'package:fitutal/utils/user_preferences.dart';
import 'package:flutter/material.dart';

import 'text_field.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 50,
            ),
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: "Nombre Usuario",
              text: user.userName,
              onChanged: (name) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: "Email",
              text: user.email,
              onChanged: (email) {},
            ),
          ],
        ),
      );
}
