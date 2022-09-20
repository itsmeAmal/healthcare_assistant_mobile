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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage('assets/backg2.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(
                top: 200.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // _buildTopLogoImage(),
                  _buildWelcomeText(),
                  _buildLoginToAccountText(),
                  _buildUsernameField(),
                  _buildPasswordField(),
                  _buildSignInButtonField(),
                ],
              ),
            ),
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
        hintText: "Username",
        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
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
      textInputAction: TextInputAction.done,
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
        hintText: "Password",
        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        labelText: "Password *",
        prefixIcon: Icon(Icons.lock),
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
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
      left: 120.0,
      right: 120.0,
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          minimumSize: const Size.fromHeight(45)),
      onPressed: () {},
      child: const Text("Sign in"),
    ),
  );
}

Widget _buildWelcomeText() {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.only(
      top: 10.0,
      left: 30.0,
      right: 30.0,
      bottom: 5.0,
    ),
    child: const Text(
      "Welcome Back!",
      style: TextStyle(
        color: Colors.black45,
        fontSize: 19.0,
      ),
    ),
  );
}

Widget _buildLoginToAccountText() {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.only(
      top: 5.0,
      left: 20.0,
      right: 20.0,
    ),
    child: const Text(
      "Login to your account",
      style: TextStyle(
        color: Colors.black45,
        fontSize: 14.0,
      ),
    ),
  );
}

Widget _buildTopLogoImage() {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.only(
      top: 5.0,
      left: 10.0,
      right: 10.0,
    ),
    child: Image.asset('assets/images/logo3_1.JPG'),
  );
}
