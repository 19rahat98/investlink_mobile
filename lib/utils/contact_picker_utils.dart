import 'package:flutter_core_null_safety_2/core/abstarct/constant/core_common_contant.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:investlink_mobile/utils/string_utils.dart';

/// получаем отформатированный номер телефона с системного пикера контактов
Future<void> pickContact(Function(String) onPickPhoneNumber) async {
  try {
    final contact = await FlutterContactPicker.pickPhoneContact();

    final phoneNumber = contact.phoneNumber?.number ?? CoreConstant.empty;
    onPickPhoneNumber(formatPickPhoneNumber(phoneNumber));
  } catch (_) {
    return;
  }
}
