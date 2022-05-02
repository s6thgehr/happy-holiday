import 'dart:ui';
import 'package:client/auth/connect_wallet_button.dart';
import 'package:client/core/contents.dart';
import 'package:client/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: HomePageDesktop(),
    );
  }
}

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Happy Holiday"),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.orange.withOpacity(0.3),
                  const Color.fromARGB(255, 97, 172, 233).withOpacity(0),
                  // Colors.transparent,
                ]),
          ),
        ),
        actions: const [ConnectWalletButton()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://images.unsplash.com/photo-1487349384428-12b47aca925e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
            ),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                screenSize.width / 8,
                32 + screenSize.width / 64 * screenSize.height / 128,
                screenSize.width / 8,
                16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    introMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: screenSize.width / 40,
                        color: Colors.grey.shade700),
                  ),
                  SizedBox(height: screenSize.width / 32),
                  Text(
                    welcomeMessage,
                    style: TextStyle(
                      fontSize: screenSize.width / 32,
                      color: Colors.pink.shade700,
                    ),
                  ),
                  SizedBox(height: screenSize.width / 32),
                  Text(
                    happyHolidayMessage,
                    style: TextStyle(
                      fontSize: screenSize.width / 64,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: screenSize.width / 32),
                  Row(
                    children: const [
                      DescriptionTile(
                        icon: Icons.rocket_launch_outlined,
                        description: 'Direct Payout',
                      ),
                      DescriptionTile(
                        icon: Icons.monetization_on_outlined,
                        description: 'Low Costs',
                      ),
                      DescriptionTile(
                        icon: MdiIcons.tab,
                        description: 'Based on Truth',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DescriptionTile extends StatelessWidget {
  final IconData icon;
  final String description;
  const DescriptionTile({
    Key? key,
    required this.icon,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width / 4,
      child: Card(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          color: Colors.blueGrey.shade200.withOpacity(0.2),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize.width / 32),
            child: Column(
              children: [
                Icon(
                  icon,
                  size: screenSize.width / 16,
                ),
                SizedBox(
                  height: screenSize.width / 32,
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: screenSize.width / 64),
                )
              ],
            ),
          )),
    );
  }
}
