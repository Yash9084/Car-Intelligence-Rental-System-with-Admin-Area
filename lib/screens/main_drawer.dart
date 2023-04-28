import 'package:car_rental_app/contacts.dart';


import 'package:car_rental_app/notifications.dart';
import 'package:car_rental_app/privacy_policy.dart';
import 'package:car_rental_app/screens/bookings.dart';
import 'package:car_rental_app/screens/car_detail.dart';
import 'package:car_rental_app/screens/cars_overview.dart';
import 'package:car_rental_app/screens/signin.dart';
import 'package:car_rental_app/send_feedback.dart';
import 'package:car_rental_app/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../user_live_location.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(30),
            color: Theme.of(context).primaryColorDark,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/my-passport-photo.jpg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Yash Pratap Rana',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'yr85088@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.dashboard),
              title: Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => CarsOverviewScreen())));
              }),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text(
              'Contacts',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ContactsPage())));
            },
          ),
        
          
          
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => NotificationsPage())));
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => PrivacyPolicyPage())));
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text(
              'Send Feedback',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => SendFeedbackPage())));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => SettingsPage())));
            },
          ),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text(
              'User Live Location',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => UserLiveLocationPage())));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Log Out',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SignInScreen())));
              });
            },
          ),
        ],
      ),
    );
  }
}
