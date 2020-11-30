import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      appBar: PreferredSize(
        preferredSize: Size(width, height * 0.09),
        child: Container(
          height: height * 0.09,
          color: Color.fromRGBO(32, 32, 32, 1),
          child: Stack(
            children: [
              Positioned(
                left: width * 0.231,
                top: 16,
                child: Container(
                  width: width * 0.446,
                  height: 32,
                  color: Colors.black,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 3, left: 10),
                      hintText: "Recharcher",
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(117, 117, 117, 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(28, 98, 185, 1),
                          )),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: width * 0.675,
                top: 16,
                child: Container(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  width: 60,
                  height: 32,
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.search,
                      color: Color.fromRGBO(117, 117, 117, 1),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: leftIcon(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget leftIcon() {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        Image.asset("o.png"),
      ],
    );
  }
}
