import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Image.network("assets/logox.png", scale: 10.0)),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Blood LB", style: TextStyle(fontSize: 26))
                ],
              ),
              // Responsive Layout
              if (!ResponsiveLayout.isSmallScreen(context))
                InkWell(
                  onTap: () {
                    launch(
                        "mailto:jamine7@outlook.com?subject=BloodLB-Health Care Connect&body=Dear Justin,\n\n ");
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 210,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFFFFFFF).withOpacity(.3),
                              offset: Offset(0, 0),
                              blurRadius: 4)
                        ]),
                    child: Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Text("Health care connect",
                            style: TextStyle(
                                color: Color(0xFFE53935),
                                fontSize: 18,
                                letterSpacing: 1,
                                fontFamily: "Montserrat-Bold")),
                      ),
                    ),
                  ),
                )
              else
                Image.network("assets/icons8-menu.png", width: 50, height: 50)
            ]));
  }
}
