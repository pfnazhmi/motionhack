import 'package:get/get.dart';
import 'package:motionhack/models/user.dart';

class CUser extends GetxController {
  final _data = User().obs;
  User getData() => _data.value;
  setData(n) => _data.value = n;
}
