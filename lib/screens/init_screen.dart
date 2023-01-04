import 'package:flutter/material.dart';
import 'package:openattendance_simple_app/router/app_routers.dart';
import 'package:openattendance_simple_app/themes/app_theme_indigo.dart';

class InitScreen extends StatelessWidget {
   
  const InitScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
           children: [

          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 160.0, bottom: 40.0  ),
            // load csv file

            child: Image.asset('assets/img/912214.png'),
          ),

           const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'Register your attendance in Odoo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 40.0),

          const Text(
            'www.openattendance.com',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),

          const Text(
            'mfalconsoft@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),

          const SizedBox(height: 40.0),

          GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AppRouter.menuOption[1].screen;
                  },
                ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppThemeIndigo.primaryColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),

          Spacer(),

           ]
      )
    );
  }
}