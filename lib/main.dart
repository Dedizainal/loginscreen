import 'package:flutter/material.dart';
import 'package:loginscreen/constrant.dart';
import 'package:loginscreen/signin_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen & Login Page",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold,
          ),
          button: TextStyle(
            color: kPrimaryColor,
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor.withOpacity(.4),
            )
          )
        )
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image1.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "NEW EXPERIENCE\n",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "NOWE WE CAN COMMUNICATE EASILY WITH EACH OTHER",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignInPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 90),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kPrimaryColor,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Let's Get Started",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
