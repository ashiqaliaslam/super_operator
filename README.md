# super_operator

Essential app for process / production operators for their daily tasks

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
