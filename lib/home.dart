import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Operator App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<ProfileScreen>(
                    builder: (context) => ProfileScreen(
                      appBar: AppBar(
                        title: const Text('User Profile'),
                      ),
                      actions: [
                        SignedOutAction((context) {
                          // TODO: Go to Sign in page
                          Navigator.of(context).pop();
                        })
                      ],
                      children: const [
                        Divider(),
                        // Padding(
                        //   padding: const EdgeInsets.all(25),
                        //   child: AspectRatio(
                        //     aspectRatio: 1,
                        //     child: Image.asset('assets/fpcl_logo.png'),
                        //   ),
                        // )
                      ],
                    ),
                  ));
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/fpcl_logo.png'),
            ),
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            // const SignOutButton()
          ],
        ),
      ),
    );
  }
}
