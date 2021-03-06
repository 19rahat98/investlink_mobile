import 'package:flutter_core_null_safety_2/core/abstarct/constant/core_common_contant.dart';
import 'package:investlink_mobile/common/constants/global_regex_constant.dart';
import 'package:investlink_mobile/common/constants/global_number_constant.dart';


/// проверка корректности номера телефона
bool isPhoneNumberValid(String maskedPhone) {
  if (maskedPhone == null) return false;
  final digits = maskedPhone.replaceAll(GlobalRegexConstant.regDigits, '');

  return digits.length >= NumberConstant.phoneDigitsCount;
}

/// валидация iin
/// [iin] - Индивидуальный идентификационный номер
bool isValidIIN(String iin) {
  if (iin == null) return false;

  if (iin.length != 12) return false;

  int yy = int.parse(iin.substring(0, 2));
  int mm = int.parse(iin.substring(2, 4));
  int dd = int.parse(iin.substring(4, 6));

  if (yy > 99 || yy < 0) return false;
  if (mm > 12 || mm < 1) return false;
  if (dd > 31 || dd < 1) return false;

  int genderCentury = int.parse(iin.substring(6, 7));

  if (genderCentury > 6 || genderCentury < 0) return false;

  final b1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  final b2 = [3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2];

  List<int> a = [];

  int control = 0;

  for (int i = 0; i < 12; i++) {
    a.add(int.parse(iin.substring(i, i + 1)));
    if (i < 11) control += a[i] * b1[i];
  }

  control = control % 11;
  if (control == 10) {
    control = 0;
    for (int i = 0; i < 11; i++) control += a[i] * b2[i];
    control = control % 11;
  }

  if (control != a[11]) return false;

  return true;
}

/// валидация пароля
/// [password] пароль
bool isValidPassword(String password) =>
    GlobalRegexConstant.regPassword.hasMatch(password ?? CoreConstant.empty);
