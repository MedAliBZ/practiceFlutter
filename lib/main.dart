import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'login app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return (ListView(
      padding: const EdgeInsets.only(top: 70),
      children: <Widget>[
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: Center(child: Image.asset('assets/images/logo1.png')),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Center(
                child: Text(
                  'BrainStormers',
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'newFont',
                      color: Color(0xffBE679A)),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 80),
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  cursorColor: const Color(0xff878787),
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff878787)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff878787)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    labelStyle: TextStyle(color: Color(0xff878787)),
                    labelText: 'Username',
                  ),
                ),
              ),
              TextFormField(
                cursorColor: const Color(0xff878787),
                obscureText: true,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff878787)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff878787)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  labelStyle: TextStyle(color: Color(0xff878787)),
                  labelText: 'Password',
                ),
              ),
              GestureDetector(
                onTap: (){},
                  child: Container(
                    height: 60,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xffBE679A),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ));
  }
}
