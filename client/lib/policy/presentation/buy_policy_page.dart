import 'dart:ui';
import 'package:client/auth/application/auth_notifier.dart';
import 'package:client/auth/domain/auth_failure.dart';
import 'package:client/auth/presentation/connect_wallet_button.dart';
import 'package:client/auth/shared/providers.dart';
import 'package:client/core/contents.dart';
import 'package:client/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BuyPolicyPage extends StatelessWidget {
  const BuyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: BuyPolicyPageDesktop(),
    );
  }
}

class BuyPolicyPageDesktop extends ConsumerWidget {
  const BuyPolicyPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    ref.listen(
      authNotifierProvider,
      ((previous, next) {
        if (next == const AuthState.authenticated()) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('You are signed in'),
                  content: const Text(
                      'Welcome to Happy Holiday. You can now use all functions on this website.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              });
        } else if (next ==
            const AuthState.failure(
                AuthFailure.metaMask("MetaMask is not available."))) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Metamask is not available'),
                  content: const Text(
                      'You need a MetaMask extension to use this website.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              });
        } else if (next ==
            const AuthState.failure(
                AuthFailure.chainId("Please use the Rinkeby Network"))) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Wrong Chain'),
                  content: const Text('Please use the Rinkeby Network.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              });
        }
      }),
    );

    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 8,
        // title: const Text("Happy Holiday"),
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 98, 116, 234),
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
        title: Row(
          children: [
            const Expanded(
              child: Text('Happy Holiday'),
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: const [
                  Text('Buy your policy'),
                  SizedBox(
                    width: 64,
                  ),
                  Text('Smart Contract Stats'),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1200,
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
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: screenSize.width / 64,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: screenSize.width / 32),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 64.0,
                  horizontal: 128,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'How does it work?',
                        style: TextStyle(fontSize: 128),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 64,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '1. Connect your MetaMask wallet using the Rinkeby network.',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '2. Enter your holiday destination, time and cost and pay the premium.',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '3. Enjoy your holiday. If it rains you get your money back with no hassle.',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(64.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                ),
              ),
            )
          ],
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
