import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: 4.0,
          right: ResponsiveLayout.isSmallScreen(context) ? 4 : 130,
          top: 10,
          bottom: 40,
        ),
        child: _bottomListWidget());
  }

  Widget _bottomListWidget() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _listTile(text: "Be a donor", image: AppAssets.give),
          _listTile(text: "Request blood", image: AppAssets.request),
          _listTile(text: "Find nearby hospitals", image: AppAssets.hospital),
        ],
      ),
    );
  }

  Widget _listTile({String text, String image}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Stack(
        children: [
          // Like/dislike icon
          Positioned(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                shape: BoxShape.rectangle,
                color: Colors.white.withOpacity(1),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0, 1.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    image,
                    height: 150,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                  Text(text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppAssets {
  static final String request = "assets/request.png";
  static final String give = "assets/give.png";
  static final String hospital = "assets/hospital.png";
}
