import 'package:flutter/material.dart';
import 'package:super_operator/home.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const AuthGate(),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}



// class SuperOperatorApp extends StatelessWidget {
//   const SuperOperatorApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       title: 'Super Operator',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         textTheme: GoogleFonts.robotoTextTheme(
//           Theme.of(context).textTheme,
//         ),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         useMaterial3: true,
//       ),
//       routerConfig: _router,
//     );
//   }
// }

// final GlobalKey<NavigatorState> rootNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'root');
// // final GlobalKey<NavigatorState> _auditsViewNavigatorKey =
// //     GlobalKey<NavigatorState>(debugLabel: 'audits');
// // final GlobalKey<NavigatorState> _talksViewNavigatorKey =
// //     GlobalKey<NavigatorState>(debugLabel: 'talks');
// // final GlobalKey<NavigatorState> _changeoversViewNavigatorKey =
// //     GlobalKey<NavigatorState>(debugLabel: 'changeovers');
// // final GlobalKey<NavigatorState> _standingOrdersViewNavigatorKey =
// //     GlobalKey<NavigatorState>(debugLabel: 'instructions');

// final _router = GoRouter(
//   initialLocation: '/',
//   debugLogDiagnostics: true,
//   navigatorKey: rootNavigatorKey,
//   routes: <RouteBase>[
//     GoRoute(
//         path: '/',
//         // name: 'home_page',
//         builder: (context, state) => const HomeScreen(),
//         routes: [
//           GoRoute(
//             path: 'sign-in',
//             builder: (context, state) {
//               return const AuthGate();
//             },
//           ),
//         ]),
//   ],
// );

// class SignInView extends StatelessWidget {
//   const SignInView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
