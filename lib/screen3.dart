import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic/screen_2.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

bool _isChanged = true;

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE5EDF5),
        body: Container(
          margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Neumorphic(
                style: const NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                ),
                child: NeumorphicIcon(
                  FontAwesome.arrow_left,
                  size: 25,
                  style: const NeumorphicStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  InkWell(
                    child: _isChanged ? const OnSwitch() : const OffSwitch(),
                    onTap: () {
                      setState(() {
                        _isChanged = !_isChanged;
                      });
                    },
                  ),

                  // Neumorphic(
                  //   style: NeumorphicStyle(
                  //       shape: NeumorphicShape.flat,
                  //       depth: -5,
                  //       boxShape: NeumorphicBoxShape.roundRect(
                  //           BorderRadius.circular(10))),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(5.0),
                  //     child: NeumorphicSwitch(
                  //       value: _isChanged,
                  //       height: 60,
                  //       onChanged: (value) {
                  //         setState(() {
                  //           _isChanged = !_isChanged;
                  //         });
                  //       },
                  //       style: const NeumorphicSwitchStyle(
                  //           activeThumbColor: Colors.blueAccent,
                  //           inactiveThumbColor: Colors.grey,
                  //           activeTrackColor: Colors.transparent,
                  //           thumbDepth: 5),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Tracker",
                        style: TextStyle(
                            color: Color.fromARGB(255, 175, 167, 167),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enabled",
                        style: TextStyle(
                          color: Color.fromARGB(255, 175, 167, 167),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Neumorphic(
                style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                    height: 280,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Weekly Productivity",
                          style: TextStyle(
                              color: Color.fromARGB(255, 175, 167, 167),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Average : 62%",
                          style: TextStyle(
                            color: Color.fromARGB(255, 175, 167, 167),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Neumorphic(
                    style: const NeumorphicStyle(depth: -3),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: NeumorphicIcon(
                        Icons.home_outlined,
                        size: 35,
                        style: NeumorphicStyle(color: Colors.blueAccent[100]),
                      ),
                    ),
                  ),
                  const BottomIcons(
                    icon: Octicons.gift,
                  ),
                  const BottomIcons(
                    icon: Icons.credit_card,
                  ),
                  const BottomIcons(
                    icon: Icons.account_balance_wallet_outlined,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OnSwitch extends StatelessWidget {
  const OnSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          depth: -3,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: 40,
          child: Stack(
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                    depth: 5,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10))),
                child: Container(
                  alignment: Alignment.topRight,
                  width: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 2, 2, 2),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OffSwitch extends StatelessWidget {
  const OffSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          depth: -3,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: 40,
          child: Stack(
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                    depth: 5,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10))),
                child: Container(
                  alignment: Alignment.topRight,
                  width: 80,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
