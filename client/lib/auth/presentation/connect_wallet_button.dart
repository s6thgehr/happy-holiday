import 'package:flutter/material.dart';

class ConnectWalletButton extends StatelessWidget {
  const ConnectWalletButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 8,
      ),
      child: TextButton(
        onPressed: () {
          print('Hello');
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.pink.shade700),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.blue.withOpacity(0.04);
              }
              if (states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed)) {
                return Colors.blueGrey.withOpacity(0.12);
              }
              return null; // Defer to the widget's default.
            },
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Center(
              child: Text(
            'Connect Wallet',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
