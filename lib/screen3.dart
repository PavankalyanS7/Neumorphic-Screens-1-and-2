import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic/screen_2.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final switchStateProvider = StateProvider<bool>((ref) {
  return false;
});

class Screen3 extends HookConsumerWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
                OnAndOffSwitchWidget(),

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
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(30))),
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
    );
  }
}

class OnAndOffSwitchWidget extends HookConsumerWidget {
  const OnAndOffSwitchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final isChanged = ref.watch(switchStateProvider);

    return SizedBox(
      width: 90,
      height: 50,
      child: Neumorphic(
        padding: const EdgeInsets.all(6),
        style: NeumorphicStyle(
          depth: -2,
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(
              15,
            ),
          ),
        ),
        child: Neumorphic(
          padding: const EdgeInsets.all(3),
          style: NeumorphicStyle(
            depth: -2,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(
                10,
              ),
            ),
          ),
          child: InkWell(
            onTap: () {
              ref.read(switchStateProvider.notifier).state = !isChanged;
            },
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: !isChanged
                          ? const Color.fromRGBO(0, 0, 0, .1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: isChanged
                            ? const Color(0xFF1096FD)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
