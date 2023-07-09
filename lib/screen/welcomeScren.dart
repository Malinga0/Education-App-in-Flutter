import 'package:flutter/material.dart';
import 'package:flutter_application_ui/screen/home_screen.dart';

class welcomeScren extends StatelessWidget {
  const welcomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/book.png",
                      scale: 8.0,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Learing is Everything",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          "Learning with pleasure with Dear programmer, wherever you are. ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Material(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            child: Text(
                              "Get start",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
