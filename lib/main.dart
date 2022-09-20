import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Healthcare Assistant'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _userNameFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(
            top: 300.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUsernameField(),
              _buildPasswordField(),
              _buildSignInButtonField(),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _buildWelcomeText() {}

Widget _buildUsernameField() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30.0,
      left: 30.0,
      right: 30.0,
    ),
    child: TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        labelText: "Username *",
        prefixIcon: Icon(
          Icons.person,
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      readOnly: false,
      maxLength: 50,
      onChanged: (value) {},
    ),
  );
}

Widget _buildPasswordField() {
  return Container(
    margin: const EdgeInsets.only(
      top: 10.0,
      left: 30.0,
      right: 30.0,
    ),
    child: TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        labelText: "Password *",
        prefixIcon: Icon(Icons.lock),
      ),
      keyboardType: TextInputType.visiblePassword,
      readOnly: false,
      maxLength: 50,
      onChanged: (value) {},
    ),
  );
}

Widget _buildSignInButtonField() {
  return Container(
    margin: const EdgeInsets.only(
      top: 10.0,
      left: 60.0,
      right: 60.0,
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          minimumSize: const Size.fromHeight(45)),
      onPressed: () {},
      child: null,
    ),
  );
}
