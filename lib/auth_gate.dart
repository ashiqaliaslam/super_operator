import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:super_operator/home.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providers: [
              EmailAuthProvider(),
              // TODO: fix this clientId as per SOPs
              GoogleProvider(
                clientId:
                    '171747079923-intdsv4bi3g6hs2qhls7b0g911am9bgg.apps.googleusercontent.com',
              )
            ],
            headerBuilder: (context, constraints, shrinkOffset) {
              return Padding(
                padding: const EdgeInsets.all(25),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/fpcl_logo.png'),
                ),
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: action == AuthAction.signIn
                    ? const Text('Welcome to SuperOperator, please sign in!')
                    : const Text('Welcome to SuperOperator, please sign up!'),
              );
            },
            footerBuilder: (context, action) {
              return const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Be a Happy and Super Operator of FPCL',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            },
            sideBuilder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.all(30),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/fpcl_logo.png'),
                ),
              );
            },
          );
        }
        return const HomeScreen();
      },
    );
  }
}
