import 'package:client/auth/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter/material.dart';

class ConnectWalletButton extends ConsumerWidget {
  const ConnectWalletButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 8,
      ),
      child: TextButton(
        onPressed: () async {
          ref.read(authNotifierProvider.notifier).signIn();
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Center(
            child: ref.watch(authNotifierProvider).maybeMap(
                  orElse: () {
                    return const Text(
                      'Connect Wallet',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    );
                  },
                  authenticated: (_) => const Text(
                    'You are signed in',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  unauthenticated: (_) => const Text(
                    'Connect Wallet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
