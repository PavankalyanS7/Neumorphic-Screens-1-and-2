import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE5EDF5),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 30, 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Neumorphic(
                      child: NeumorphicIcon(
                        Icons.menu,
                        size: 25,
                        style: const NeumorphicStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20)),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://picsum.photos/200',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Priya Darshini",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "7 new messages",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Neumorphic(
                            child: Container(
                              color: Colors.green,
                              height: 12,
                              width: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        NeumorphicBoxes(
                          icon: Icons.alarm,
                          subtitle: "Daily",
                          title: "Homework",
                        ),
                        NeumorphicBoxes(
                          icon: Icons.menu_book,
                          subtitle: "Digital",
                          title: "Dairy",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        NeumorphicBoxes(
                          icon: Icons.edit_note,
                          subtitle: "Weekly",
                          title: "Update",
                        ),
                        NeumorphicBoxes(
                          icon: Icons.calendar_month,
                          subtitle: "School",
                          title: "Calender",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20)),
                        depth: 8,
                        intensity: 0.8,
                        surfaceIntensity: 0.1,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const NeumorphicProgress(
                              style: ProgressStyle(
                                depth: 4,
                              ),
                              percent: 0.8,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Profile Status",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "80%",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                              style: NeumorphicStyle(
                                  color: Colors.blueAccent[100]),
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
          ],
        ),
      ),
    );
  }
}

class BottomIcons extends StatelessWidget {
  // const BottomIcons({
  //   Key? key,
  // }) : super(key: key);
  final IconData icon;
  const BottomIcons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: Container(
        color: const Color.fromARGB(255, 240, 240, 239),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        child: NeumorphicIcon(
          icon,
          size: 35,
          style:
              const NeumorphicStyle(color: Color.fromARGB(255, 162, 196, 250)),
        ),
      ),
    );
  }
}

class NeumorphicBoxes extends StatelessWidget {
  final String subtitle;
  final IconData icon;
  final String title;

  const NeumorphicBoxes({
    super.key,
    required this.subtitle,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 8,
        intensity: 0.8,
        surfaceIntensity: 0.1,
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
      ),
      child: SizedBox(
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                  depth: 8,
                  intensity: 0.8,
                  surfaceIntensity: 0.1,
                  color: const Color(0xFFE5EDF5),
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                ),
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
