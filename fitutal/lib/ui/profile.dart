import 'package:fitutal/model/user.dart';
import 'package:fitutal/utils/app_bar.dart';
import 'package:fitutal/utils/edit_profile.dart';
import 'package:fitutal/utils/foots_widget.dart';
import 'package:fitutal/utils/profile_widget.dart';
import 'package:fitutal/utils/user_preferences.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 50,
          ),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => EditProfile()));
            },
          ),
          const SizedBox(
            height: 24,
          ),
          buildUsername(user),
          const SizedBox(
            height: 24,
          ),
          FootsWidget(),
        ],
      ),
    );
  }

  Widget buildUsername(User user) => Column(
        children: [
          Text(
            user.userName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(user.email, style: TextStyle(color: Colors.grey))
        ],
      );
}
