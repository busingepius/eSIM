import 'package:datad/screens/second.dart';
import 'package:datad/widgets/summary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bottomNavigationBar.dart';
import '../widgets/popularPlans.dart';
import '../widgets/recentUsages.dart';
import '../widgets/roundedClipper.dart';
import '../widgets/userDetails.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E67F9),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserDetails(),
                    RecentUsages(),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Second(),
                        ),
                      ),
                      child: Summary(),
                    ),
                    PopularPlans(),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              left: 0.0,
              right: 0.0,
              child: CustomBottomNavBar(),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:  CustomBottomNavBar(),
    );
  }
}
