import 'package:codetanks/codetanks.dart';

class SpinTank extends BaseTank {
  @override
  void run() {
    commands.add(
        Command.MOVE_FORWARD & Command.ROTATE_TANK_CLOCKWISE & Command.FIRE);
  }

  @override
  void onEvent(Map event) {
    commands.add(Command.NONE);
  }
}

BaseTank createTank() => SpinTank();
