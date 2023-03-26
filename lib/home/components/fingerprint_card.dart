import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class FingerPrintCard extends StatelessWidget {
  const FingerPrintCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.circle(),
          depth: -10,
          color: Colors.lightBlueAccent),
      child: Container(
        height: 150,
        width: 150,
        padding: const EdgeInsets.all(30),
        child: Neumorphic(
          style: const NeumorphicStyle(
              shape: NeumorphicShape.convex,
              boxShape: NeumorphicBoxShape.circle(),
              depth: 30,
              color: Colors.lightBlueAccent),
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/fingerprint.png'),
                    colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
