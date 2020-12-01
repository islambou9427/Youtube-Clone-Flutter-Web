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
                  width: 63,
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
              ),
              Positioned(
                top: 12,
                left: width * 0.823,
                child: rightIcon(),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Row(
          children: [
            // Body Section left Védios
            Container(
              width: width * 0.06,
              height: height,
              color: Color.fromRGBO(32, 32, 32, 1),
              child: Positioned(
                left: 0,
                child: Column(
                  children: [
                    LeftIcon(icon: Icons.home, text: "Accueil"),
                    LeftIcon(
                        icon: Icons.local_fire_department, text: "Tandances"),
                    LeftIcon(icon: Icons.subscriptions, text: "Abonnements"),
                    LeftIcon(icon: Icons.video_library, text: "Bibliothèque"),
                  ],
                ),
              ),
            ),
            // Body Section center Védios

            Container(
              width: width - width * 0.06,
              height: height,
              child: Column(
                children: [
                  // First Line
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: (width - width * 0.06) / 4.5,
                        height: 250,
                        child: Column(
                          children: [
                            Image.asset("0.png"),
                            Row(
                              children: [
                                Image.asset(""),
                                Text(
                                  "Princess Diana by Cherry",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Second Line
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget leftIcon() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, bottom: 4.7),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 27,
            ),
            onPressed: () {},
          ),
        ),
        Image.asset(
          "o.png",
          width: 130,
          height: 70,
        ),
      ],
    );
  }

  Widget rightIcon() {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.video_call,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 8,
        ),
        IconButton(
          icon: Icon(
            Icons.apps,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 8,
        ),
        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 18,
        ),
        Image.asset(
          "a.png",
        ),
      ],
    );
  }
}

class LeftIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const LeftIcon({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.06,
      height: 67,
      margin: EdgeInsets.only(top: 8),
      child: Column(
        children: [
          IconButton(
            icon: Icon(icon, color: Colors.white),
            onPressed: () {},
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }
}
